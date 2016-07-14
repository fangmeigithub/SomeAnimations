//
//  ActionTwoView.h
//  SomeAnimations
//
//  Created by liubaojian on 14/7/14.
//  Copyright © 2016年 liubaojian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActionTwoView : UIView
{
    UIImageView *oneBgImage;
    UIImageView  *oneLabelImage;
    UIImageView  *Image1;
    UIImageView  *Image2;
    
    NSTimer *t;
    NSTimer *t1;
    NSTimer *t2;
    CGFloat clickCount;
    CGFloat secont;
    float alphaIndex;
}
-(void)initSubV;
-(void)showActionTwo;

@end
