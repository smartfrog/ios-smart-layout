//
//  EasyLayoutView.m
//  SmartLayout
//
//  Created by Frédéric DE MATOS on 30/01/13.
//  Copyright (c) 2013 Smartfrog. All rights reserved.
//

#import "AbsctractLayoutView.h"


@implementation AbsctractLayoutView



- (id) init
{
    self = [super init];
    
    if (self)
    {
        [self defaultInit];
    }

    return self;
}

- (id) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self defaultInit];
    }
    
    return self;
}

-(id) initWithBackgroundImage:(NSString *) imageName
{
    self = [super initWithBackgroundImage:imageName];
    
    if (self)
    {
        [self defaultInit];
    }
    
    return self;
}


- (void) defaultInit
{
    self.gap = 10;
    self.padding = 10;
    self.hAlign = left;
    self.vAlign = top;
}

-(void) addSubview:(UIView *)view
{
    [super addSubview:view];

    [self _updateSubViewsPosition];
}

-(void) addSubview:(UIView *)view withSize:(CGSize )size
{
    CGRect frame = view.frame;
    view.frame = CGRectMake(frame.origin.x, frame.origin.y, size.width, size.height);
    
    [self addSubview:view];
}

-(void) _updateSubViewsPosition
{
    CGSize totalSize = [self _totalSubViewsSize];
    UIView *previousView = nil;
    
    for (UIView *view in self.subviews)
    {
        if (view != self.backgroundImageView)
        {
            int x = 0;
            int y = 0;
            
            switch (self.vAlign)
            {
                case top:
                    y = self.padding;
                    break;
                    
                case bottom:
                    y = self.frame.size.height - self.padding;
                    
                    if (self.layout == vertical)
                        y -= totalSize.height;
                    
                    if (self.layout == horizontal)
                        y -= view.frame.size.height;
                    break;
                    
                case middle:
                    y = self.frame.size.height / 2;
                    
                    if (self.layout == vertical)
                        y -= totalSize.height / 2;
                    
                    if (self.layout == horizontal)
                        y -= view.frame.size.height / 2;
                    break;
            }
            
            switch (self.hAlign)
            {
                case left:
                    x = self.padding;
                    break;
                    
                case right:
                    x = self.frame.size.width - self.padding;
                    
                    if (self.layout == vertical)
                        x -= view.frame.size.width ;
                    
                    if (self.layout == horizontal)
                        x -= totalSize.width;
                    
                    break;
                    
                case center:
                    x = self.frame.size.width / 2;
                    
                    if (self.layout == vertical)
                        x -= view.frame.size.width / 2;
                    
                    if (self.layout == horizontal)
                        x -= totalSize.width / 2;
                    
                    break;
            }

            
            if (previousView != nil)
            {
                if (self.layout == horizontal)
                    x = previousView.frame.origin.x + previousView.frame.size.width + self.gap;
                
                if (self.layout == vertical)
                    y = previousView.frame.origin.y + previousView.frame.size.height + self.gap;
            }
            
            view.frame = CGRectMake(x, y, view.frame.size.width, view.frame.size.height);
            previousView = view;
        }
    }
    
}

-(CGSize) _totalSubViewsSize
{
    int width = 0;
    int height = 0;
    
    for (UIView *view in self.subviews)
    {
        if (view != self.backgroundImageView)
        {
            if (width > 0)
                width += self.gap;
            
            if (height > 0)
                height += self.gap;
            
            width += view.bounds.size.width;
            height += view.bounds.size.height;
        }
    }
    
    return CGSizeMake(width, height);
}

@end
