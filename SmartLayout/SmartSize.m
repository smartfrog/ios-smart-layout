//
//  SmartSize.m
//  ClickEatPro
//
//  Created by Frédéric DE MATOS on 09/07/13.
//  Copyright (c) 2013 smartfrog. All rights reserved.
//

#import "SmartSize.h"
#import "AbsctractLayoutView.h"

@implementation SmartSize

+ (NSInteger) percentWidth:(NSInteger) percent ForView:(UIView *) view
{
    
    if ([view isKindOfClass:[AbsctractLayoutView class]])
    {
        return (((AbsctractLayoutView *)view).usableSize.width ) * percent / 100;
    }

    return view.frame.size.width * percent / 100;
}

+ (NSInteger) percentHeight:(NSInteger) percent ForView:(UIView *) view
{
    
    if ([view isKindOfClass:[AbsctractLayoutView class]])
    {
        return (((AbsctractLayoutView *)view).usableSize.height ) * percent / 100;
    }
    
    return view.frame.size.height * percent / 100;
}

@end
