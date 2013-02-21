//
//  ViewController.m
//  SmartLayout
//
//  Created by Frédéric DE MATOS on 21/02/13.
//  Copyright (c) 2013 smartfrog. All rights reserved.
//

#import "UIVViewDemoViewController.h"
#import "UIVViewDemoView.h"

@interface UIVViewDemoViewController ()

@end

@implementation UIVViewDemoViewController

- (id)init
{
    self = [super init];
    if (self) {
        self.title = @"UIVView";
    }
    return self;
}

- (void)loadView
{
    self.view = [[UIVViewDemoView alloc] init];
}



@end
