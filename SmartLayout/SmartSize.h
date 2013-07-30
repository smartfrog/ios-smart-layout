//
//  SmartSize.h
//  ClickEatPro
//
//  Created by Frédéric DE MATOS on 09/07/13.
//  Copyright (c) 2013 smartfrog. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SmartSize : NSObject

+ (NSInteger) percentWidth:(NSInteger) percent ForView:(UIView *) view;
+ (NSInteger) percentHeight:(NSInteger) percent ForView:(UIView *) view;

@end
