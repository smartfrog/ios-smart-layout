//
//  UIHViewDemoViewController.m
//  SmartLayout
//
//  Created by Frédéric DE MATOS on 21/02/13.
//  Copyright (c) 2013 smartfrog. All rights reserved.
//

#import "UIHViewDemoViewController.h"
#import "UIHViewDemoView.h"

@interface UIHViewDemoViewController ()

@end

@implementation UIHViewDemoViewController

- (id)init
{
    self = [super init];
    if (self) {
        self.title = @"UIHView";
    }
    return self;
}

- (void)loadView
{
    self.view = [[UIHViewDemoView alloc] init];
}



@end
