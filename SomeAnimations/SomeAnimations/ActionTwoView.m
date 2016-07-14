//
//  ActionTwoView.m
//  SomeAnimations
//
//  Created by liubaojian on 14/7/14.
//  Copyright © 2016年 liubaojian. All rights reserved.
//

#import "ActionTwoView.h"
#import "commonfile.h"
@implementation ActionTwoView
#define  HeadHeight       (iPhone5?109:(iPhone4?79:109))
#define  betweenHeight       (iPhone5?101:(iPhone4?90:101))
-(void)initSubV
{
    
    oneBgImage =[[UIImageView alloc] initWithFrame:CGRectMake(39*NEWX,HeadHeight,238*NEWX,193*NEWX)];
    oneBgImage.image = [UIImage  imageNamed:@"welcomeTwo.png"];
    oneBgImage.backgroundColor = [UIColor clearColor];
    oneBgImage.alpha =0;
    [self addSubview:oneBgImage];
    
    oneLabelImage =[[UIImageView alloc] initWithFrame:CGRectMake(85*NEWX,HeadHeight+betweenHeight+146*NEWX,150*NEWX,71.5*NEWX)];
    oneLabelImage.image = [UIImage  imageNamed:@"twoLabel.png"];
    oneLabelImage.backgroundColor = [UIColor clearColor];
    oneLabelImage.alpha = 0;
    [self addSubview:oneLabelImage];
    
    Image1 =[[UIImageView alloc] initWithFrame:CGRectMake(38*NEWX,19,164*NEWX,78*NEWX)];
    Image1.image = [UIImage  imageNamed:@"welcomeTwo1.png"];
    Image1.backgroundColor = [UIColor clearColor];
    Image1.alpha = 0;
    [oneBgImage addSubview:Image1];
    
    Image2 =[[UIImageView alloc] initWithFrame:CGRectMake(38*NEWX,120,164*NEWX,62*NEWX)];
    Image2.image = [UIImage  imageNamed:@"welcomeTwo2.png"];
    Image2.backgroundColor = [UIColor clearColor];
    Image2.alpha = 0;
    [oneBgImage addSubview:Image2];
    
    
    
    
}
-(void)showActionTwo
{
    oneBgImage.alpha = 0;   //初始化一下
    oneLabelImage.alpha = 0;
    alphaIndex=0;
    Image1.alpha = 0;
    Image2.alpha = 0;
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
        alphaIndex = 0;
        t1 =[NSTimer scheduledTimerWithTimeInterval:0.01f target:self selector: @selector(TimeDismiss1)  userInfo:nil repeats:YES];
    }
}
-(void)TimeDismiss1
{
    alphaIndex +=0.02;
    if (alphaIndex <=1) {
        Image2.alpha =alphaIndex;
    }
    else
    {
        [t1 invalidate];
        alphaIndex = 0;
        t2 =[NSTimer scheduledTimerWithTimeInterval:0.01f target:self selector: @selector(TimeDismiss2)  userInfo:nil repeats:YES];
    }
}
-(void)TimeDismiss2
{
    alphaIndex +=0.02;
    if (alphaIndex <=1) {
        Image1.alpha =alphaIndex;
    }
    else
    {
        [t2 invalidate];
    }
}

@end
