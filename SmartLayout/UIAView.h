//
//  UIAView.h
//  SmartLayout
//
//  Created by Frédéric DE MATOS on 21/02/13.
//  Copyright (c) 2013 smartfrog. All rights reserved.
//

#import "AbsctractLayoutView.h"

@interface UIAView : AbsctractLayoutView


-(void) addSubview:(UIView *) view toTop:(NSNumber *)top right:(NSNumber *)right bottom:(NSNumber *) bottom left:(NSNumber *) left;

@end
