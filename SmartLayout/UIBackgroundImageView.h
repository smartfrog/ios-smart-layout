//
//  UIBackroundImageView.h
//  SmartLayout
//
//  Created by Frédéric DE MATOS on 23/02/13.
//  Copyright (c) 2013 smartfrog. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBackgroundImageView : UIView

@property(nonatomic) UIImageView *backgroundImageView;

-(id) initWithBackgroundImage:(NSString *) imageName;

-(void) setBackgroundImage:(NSString *)imageName;
-(void) setBackgroundImage:(NSString *)imageName withScale:(BOOL) scale;

@end
