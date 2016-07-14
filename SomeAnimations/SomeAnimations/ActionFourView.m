//
//  ActionFourView.m
//  SomeAnimations
//
//  Created by liubaojian on 14/7/14.
//  Copyright © 2016年 liubaojian. All rights reserved.
//

#import "ActionFourView.h"
#import "commonfile.h"

#define  HeadHeight       (iPhone5?109:(iPhone4?49:109))
#define  betweenHeight       (iPhone5?101:(iPhone4?80:101))
@implementation ActionFourView

-(void)initSubV
{
    
    oneBgImage =[[UIImageView alloc] initWithFrame:CGRectMake(0,HeadHeight+20,320*NEWX,136*NEWX)];
    oneBgImage.image = [UIImage  imageNamed:@"welcomeFour.png"];
    oneBgImage.backgroundColor = [UIColor clearColor];
    oneBgImage.alpha = 0;
    [self addSubview:oneBgImage];
    
    oneLabelImage =[[UIImageView alloc] initWithFrame:CGRectMake(85*NEWX,HeadHeight+betweenHeight+146*NEWX,150*NEWX,71.5*NEWX)];
    oneLabelImage.image = [UIImage  imageNamed:@"fourLabel.png"];
    oneLabelImage.backgroundColor = [UIColor clearColor];
    oneLabelImage.alpha = 0;
    [self addSubview:oneLabelImage];
    
    carImage =[[UIImageView alloc] initWithFrame:CGRectMake(15*NEWX,HeadHeight+138*NEWX,78*NEWX,27*NEWX)];
    carImage.image = [UIImage  imageNamed:@"welcomeCar.png"];
    carImage.backgroundColor = [UIColor clearColor];
    carImage.alpha = 0;
    [self addSubview:carImage];
    
    pinLaImagev =[[UIImageView alloc] initWithFrame:CGRectMake(9*NEWX,15*NEWX,11.5*NEWX,11.5*NEWX)];
    pinLaImagev.image = [UIImage  imageNamed:@"welcomelun.png"];
    pinLaImagev.backgroundColor = [UIColor clearColor];
    pinLaImagev.alpha = 0;
    [carImage addSubview:pinLaImagev];
    
    
    pinLaImagev1 =[[UIImageView alloc] initWithFrame:CGRectMake(60*NEWX,15*NEWX,11.5*NEWX,11.5*NEWX)];
    pinLaImagev1.image = [UIImage  imageNamed:@"welcomelun.png"];
    pinLaImagev1.backgroundColor = [UIColor clearColor];
    pinLaImagev1.alpha = 0;
    [carImage addSubview:pinLaImagev1];
    
    UIButton *button=[[UIButton alloc]initWithFrame:CGRectMake(95*NEWX, HeadHeight+betweenHeight+271*NEWX, 130*NEWX, 40*NEWX)];
    [button addTarget:self action:@selector(toLoading) forControlEvents:UIControlEventTouchUpInside];
    [button setBackgroundColor:[UIColor clearColor]];
    [button setBackgroundImage:[UIImage imageNamed:@"fourButton.png"] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:16];
    [self addSubview:button];
}

-(void)showActionFour
{
    
    t = [NSTimer scheduledTimerWithTimeInterval:0.01f target:self selector: @selector(TimeDismiss)  userInfo:nil repeats:YES];
}
-(void)TimeDismiss
{
    alphaIndex +=0.008;
    if (alphaIndex <=1) {
        oneBgImage.alpha =alphaIndex;
        oneLabelImage.alpha =alphaIndex;
        carImage.alpha = alphaIndex;
        pinLaImagev.alpha = alphaIndex;
        pinLaImagev1.alpha = alphaIndex;
    }
    else
    {
        [t invalidate];
        [self carMove];
    }
}
-(void)carMove
{
    t1 = [NSTimer scheduledTimerWithTimeInterval:0.01f target:self selector: @selector(TimeDismiss1)  userInfo:nil repeats:YES];
    [UIView animateWithDuration:1.5 animations:^{
       carImage.frame =CGRectMake(320*NEWX,HeadHeight+138*NEWX,78*NEWX,27*NEWX);
    }completion:^(BOOL finished){
        [t1 invalidate];
    }];
}
-(void)TimeDismiss1
{
    lunMove+=0.08;
    pinLaImagev.transform = CGAffineTransformMakeRotation(lunMove*M_PI);
    pinLaImagev1.transform = CGAffineTransformMakeRotation(lunMove*M_PI);
}
-(void)toLoading
{
    [self carMove];
}
@end
