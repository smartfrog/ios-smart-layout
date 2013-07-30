//
//  EasyLayoutView.h
//  SmartLayout
//
//  Created by Frédéric DE MATOS on 30/01/13.
//  Copyright (c) 2013 Smartfrog. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIBackgroundImageView.h"

@interface AbsctractLayoutView : UIBackgroundImageView

enum Layout {horizontal, vertical};
enum HorizontalAlign {left, right, center};
enum VerticalAlign {top, bottom, middle};

@property (nonatomic) enum Layout layout;
@property (nonatomic) enum HorizontalAlign hAlign;
@property (nonatomic) enum VerticalAlign vAlign;
@property (nonatomic) int gap;
@property (nonatomic) int padding;

-(void) defaultInit;

-(void) addSubview:(UIView *)view withSize:(CGSize )size;

-(NSInteger) freeWidth;
-(NSInteger) freeHeight;
-(CGSize) usableSize;

-(void) addSubview:(UIView *)view withPercentWidth:(NSNumber *)percentWidth andPercentHeight:(NSNumber *) percentHeight;



@end
