//
//  ActionOneView.m
//  SomeAnimations
//
//  Created by liubaojian on 14/7/14.
//  Copyright © 2016年 liubaojian. All rights reserved.
//

#import "ActionOneView.h"
#import "commonfile.h"

#define DEGREES_TO_RADIANS(d) (d * M_PI / 180)

#define  HeadHeight       (iPhone5?109:(iPhone4?79:109))
#define  betweenHeight       (iPhone5?101:(iPhone4?90:101))
@implementation ActionOneView
-(void)initSubV
{

    oneBgImage =[[UIImageView alloc] initWithFrame:CGRectMake(39*NEWX,HeadHeight,242*NEWX,199*NEWX)];
    oneBgImage.image = [UIImage  imageNamed:@"welcomeOne.png"];
    oneBgImage.backgroundColor = [UIColor clearColor];
    oneBgImage.alpha = 0;
    [self addSubview:oneBgImage];


    oneLabelImage =[[UIImageView alloc] initWithFrame:CGRectMake(85*NEWX,HeadHeight+betweenHeight+146*NEWX,150*NEWX,71.5*NEWX)];
    oneLabelImage.image = [UIImage  imageNamed:@"oneLabel.png"];
    oneLabelImage.backgroundColor = [UIColor clearColor];
    oneLabelImage.alpha = 0;
    [self addSubview:oneLabelImage];
    
    clickCount = -2.85;
}
-(void)showActionOne
{
    [oneBgImage removeFromSuperview];
    [oneLabelImage removeFromSuperview];
    [pinLayer removeFromSuperlayer];
    alphaIndex = 0;
    [self initSubV];
   t = [NSTimer scheduledTimerWithTimeInterval:0.01f target:self selector: @selector(TimeDismiss)  userInfo:nil repeats:YES];
    
}
-(void)TimeDismiss
{
    alphaIndex +=0.008;
    if (alphaIndex <=1) {
        oneBgImage.alpha =alphaIndex;
        oneLabelImage.alpha =alphaIndex;
    }
    else
    {
        [t invalidate];
        t=nil;
        pinLayer = [CALayer layer];
        [pinLayer setBounds:CGRectMake(0, 0, 81, 85.5)];
        [pinLayer setContents:(id)[UIImage imageNamed:@"welcomePint.png"].CGImage];
        [pinLayer setPosition:CGPointMake(160*NEWX,(HeadHeight+121)*NEWX)];
        [pinLayer setAnchorPoint:CGPointMake(0.1728, 0.8363)];
        [pinLayer setTransform:CATransform3DMakeRotation(-2.85, 0, 0, 1)];
        [self.layer addSublayer:pinLayer];
        [self go];
    }
}
- (void)go {
    
    CABasicAnimation* rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.duration = 1.0f;
    rotationAnimation.repeatCount = 1;
    rotationAnimation.autoreverses = NO;
    rotationAnimation.fromValue = [NSNumber numberWithFloat:-0.90 * M_PI]; // 起始角度
    rotationAnimation.toValue = [NSNumber numberWithFloat:0.45 * M_PI]; // 终止角度
    rotationAnimation.removedOnCompletion = NO;
    rotationAnimation.fillMode = kCAFillModeForwards;
    rotationAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [pinLayer addAnimation:rotationAnimation forKey:@"revItUpAnimation"];
 
}
@end
