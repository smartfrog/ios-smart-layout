//
//  UIAView.h
//  SmartLayout
//
//  Created by Frédéric DE MATOS on 21/02/13.
//  Copyright (c) 2013 smartfrog. All rights reserved.
//

#import "UIBackgroundImageView.h"

@interface UIAbsolutView : UIBackgroundImageView


-(void) addSubview:(UIView *) view toTop:(NSNumber *)top right:(NSNumber *)right bottom:(NSNumber *) bottom left:(NSNumber *) left;

@end
