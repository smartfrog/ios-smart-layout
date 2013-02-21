//
//  UIHViewDemoView.m
//  SmartLayout
//
//  Created by Frédéric DE MATOS on 21/02/13.
//  Copyright (c) 2013 smartfrog. All rights reserved.
//

#import "UIHViewDemoView.h"

@implementation UIHViewDemoView

- (id)init
{
    self = [super initWithFrame:CGRectMake(0, 0, 1024, 699)];
    if (self)
    {
        [self setBackgroundImage:@"background"]; // You can also use initWithBackgroundImage
        
        self.padding = 20;
        self.gap = 20;
        self.hAlign = center;
        self.vAlign = middle;
        
        UIButton * button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button1 setTitle:@"Button1" forState:UIControlStateNormal];

        [self addSubview:button1 withSize:CGSizeMake(200, 200)];
        
        UIButton * button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button2.frame = CGRectMake(0, 0, 200, 200);
        [button2 setTitle:@"Button2" forState:UIControlStateNormal];
        
        [self addSubview:button2 withSize:CGSizeMake(200, 200)];
        
        UIButton * button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button3 setTitle:@"Button3" forState:UIControlStateNormal];
        
        [self addSubview:button3 withSize:CGSizeMake(200, 200)];
        
        
    }
    return self;
}


@end
