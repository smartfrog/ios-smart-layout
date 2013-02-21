//
//  UIAView.m
//  SmartLayout
//
//  Created by Frédéric DE MATOS on 21/02/13.
//  Copyright (c) 2013 smartfrog. All rights reserved.
//

#import "UIAView.h"

@implementation UIAView

- (void) defaultInit
{
    self.layout = absolut;
}

-(void) addSubview:(UIView *) view toTop:(NSNumber *)top right:(NSNumber *)right bottom:(NSNumber *) bottom left:(NSNumber *) left
{
    int x = 0;
    int y = 0;
    
    int width = view.frame.size.width;
    int height = view.frame.size.height;
    
    if (top != nil)
    {
        y = [top intValue];
        
        if (bottom != nil)
        {
            height = self.frame.size.height - [bottom intValue] - [top intValue];
        }
    }
    else if (bottom != nil)
    {
        y = self.frame.size.height - [bottom intValue] - height ;
    }
    
    
    if (left != nil)
    {
        x = [left intValue];
        
        if (right != nil)
        {
            width = self.frame.size.width - [right intValue] - [left intValue];
        }
    }
    else if (right != nil)
    {
        x = self.frame.size.width - [right intValue] - width;
    }

    view.frame = CGRectMake(x, y, width, height);
    [super addSubview:view];
}

@end
