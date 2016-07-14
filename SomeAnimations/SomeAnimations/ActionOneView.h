//
//  ActionOneView.h
//  SomeAnimations
//
//  Created by liubaojian on 14/7/14.
//  Copyright © 2016年 liubaojian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WelcomeViewController.h"
@interface ActionOneView : UIView
{
    UIImageView *oneBgImage;
    UIImageView  *oneLabelImage;
    CALayer *pinLayer;

    float alphaIndex;
    NSTimer *t;
    NSTimer *t1;
    CGFloat clickCount;
    CGFloat secont;
}
-(void)initSubV;
-(void)showActionOne;
@end
