//
//  UIAViewDemoView.m
//  SmartLayout
//
//  Created by Frédéric DE MATOS on 21/02/13.
//  Copyright (c) 2013 smartfrog. All rights reserved.
//

#import "UIAViewDemoView.h"

@implementation UIAViewDemoView

- (id)init
{
    self = [super initWithFrame:CGRectMake(0, 0, 1024, 699)];
    if (self)
    {
        [self setBackgroundImage:@"background"]; // You can also use initWithBackgroundImage
        

        UIButton * button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button1 setTitle:@"Button1" forState:UIControlStateNormal];        
        [self addSubview:button1 toTop:@20 right:@20 bottom:@20 left:@20];
        
        UIButton * button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button2.frame = CGRectMake(0, 0, 200, 200);
        [button2 setTitle:@"Button2" forState:UIControlStateNormal];
        [self addSubview:button2 toTop:@30 right:nil bottom:nil left:@30];
        
        
        UIButton * button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button3 setTitle:@"Button3" forState:UIControlStateNormal];
        button3.frame = CGRectMake(0, 0, 200, 200);
        [self addSubview:button3 toTop:nil right:@30 bottom:@30 left:nil];
        
        
    }
    return self;
}


@end
