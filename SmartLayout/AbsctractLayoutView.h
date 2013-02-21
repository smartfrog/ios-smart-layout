//
//  EasyLayoutView.h
//  SmartLayout
//
//  Created by Frédéric DE MATOS on 30/01/13.
//  Copyright (c) 2013 Smartfrog. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AbsctractLayoutView : UIView

enum Layout {absolut, horizontal, vertical};
enum HorizontalAlign {left, right, center};
enum VerticalAlign {top, bottom, middle};

@property (nonatomic) enum Layout layout;
@property (nonatomic) enum HorizontalAlign hAlign;
@property (nonatomic) enum VerticalAlign vAlign;
@property (nonatomic) int gap;
@property (nonatomic) int padding;

-(void) defaultInit;
-(id) initWithBackgroundImage:(NSString *) imageName;

-(void) addSubview:(UIView *)view withSize:(CGSize )size;

-(void) setBackgroundImage:(NSString *) imageName;

@end
