//
//  UIAViewDemoViewController.m
//  SmartLayout
//
//  Created by Frédéric DE MATOS on 21/02/13.
//  Copyright (c) 2013 smartfrog. All rights reserved.
//

#import "UIAViewDemoViewController.h"
#import "UIAViewDemoView.h"

@interface UIAViewDemoViewController ()

@end

@implementation UIAViewDemoViewController

- (id)init
{
    self = [super init];
    if (self) {
        self.title = @"UIAView";
    }
    return self;
}

- (void)loadView
{
    self.view = [[UIAViewDemoView alloc] init];
}


@end
