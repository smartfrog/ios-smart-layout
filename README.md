IOS SMART LAYOUT
================

Smart Layout helps you to create your IOS screens programmatically. If you found IOS AutoLayout to complex or if you target IOS 5, Smart Layout is made for you.

It provides you three types of UIView that you can use to arrange easily elements of your screen. Each view from smart layout contains an backgroundImage that allows you to put an image in the background of your container.


  * UIHView / UIVView: Arranges the sub views horizontaly / vertically. You can specify vertical align, horizontal align, gap between elements, padding.
  
  * UIAbsolutView: Arranges the sub views independently of each-other. You add the subview with the following constraints : left, right, top, bottom. That constraint represent the space between the sub view you are adding and the border of it parent view. 

Installation
------------

Just copy files present in the "classes" group of the sample project into your own project.


How to use it ?
---------------


### UIHView and UIVView

    [self setBackgroundImage:@"background"];
        
    self.padding = 20;
    self.gap = 20;
    self.hAlign = right;
    self.vAlign = middle;
        
    UIButton * button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button1 setTitle:@"Button1" forState:UIControlStateNormal];
    [self addSubview:button1 withSize:CGSizeMake(200, 200)];
        
    UIButton * button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(0, 0, 200, 200);
    [button2 setTitle:@"Button2" forState:UIControlStateNormal];
    [self addSubview:button2];
        
    UIButton * button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button3 setTitle:@"Button3" forState:UIControlStateNormal];
    [self addSubview:button3 withSize:CGSizeMake(200, 200)];

### UIAbsolutView

    [self setBackgroundImage:@"background"]; 
        

    UIButton * button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button1 setTitle:@"Button1" forState:UIControlStateNormal];        
    [self addSubview:button1 toTop:@20 right:@20 bottom:@20 left:@20];
        
    UIButton * button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(0, 0, 200, 200);
    [button2 setTitle:@"Button2" forState:UIControlStateNormal];
    [self addSubview:button2 toTop:@30 right:nil bottom:nil left:@30];
        
        
    UIButton * button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button3 setTitle:@"Button3" forState:UIControlStateNormal];
    button3.frame = CGRectMake(0, 0, 200, 200);
    [self addSubview:button3 toTop:nil right:@30 bottom:@30 left:nil];


Reporting issues or requests for improvement
--------------------------------------------

Please report problems on the [GitHub repository](https://github.com/smartfrog/ios-smart-layout/issues).

License
-------
Smart Layout is licensed under the terms of the [Apache License, version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html).

Credits
-------
Smart Layout is brought to you by the [SMARTFROG](http://smartfrog.fr) Team.
