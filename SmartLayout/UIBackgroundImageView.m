//
//  UIBackroundImageView.m
//  SmartLayout
//
//  Created by Frédéric DE MATOS on 23/02/13.
//  Copyright (c) 2013 smartfrog. All rights reserved.
//

#import "UIBackgroundImageView.h"

@implementation UIBackgroundImageView


-(id) initWithBackgroundImage:(NSString *) imageName
{
    self = [super init];
    
    if (self)
    {
        [self setBackgroundImage:imageName];
        self.frame = CGRectMake(0, 0, _backgroundImageView.frame.size.width, _backgroundImageView.frame.size.height);
    }
    
    return self;
}


-(void) setBackgroundImage:(NSString *)imageName
{
    _backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
    [super insertSubview:_backgroundImageView atIndex:0];
}

@end
