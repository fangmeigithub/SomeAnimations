//
//  ActionThreeView.m
//  SomeAnimations
//
//  Created by liubaojian on 14/7/14.
//  Copyright © 2016年 liubaojian. All rights reserved.
//

#import "ActionThreeView.h"
#import "commonfile.h"

#define  HeadHeight       (iPhone5?109:(iPhone4?79:109))
#define  betweenHeight       (iPhone5?101:(iPhone4?90:101))
@implementation ActionThreeView

-(void)initSubV
{
    
    oneBgImage =[[UIImageView alloc] initWithFrame:CGRectMake(44*NEWX,HeadHeight-25*NEWX,233*NEWX,233*NEWX)];
    oneBgImage.image = [UIImage  imageNamed:@"welcomeThree.png"];
    oneBgImage.backgroundColor = [UIColor clearColor];
    oneBgImage.alpha = 0;
    [self addSubview:oneBgImage];
    
    oneLabelImage =[[UIImageView alloc] initWithFrame:CGRectMake(85*NEWX,HeadHeight+betweenHeight+146*NEWX,170*NEWX,71.5*NEWX)];
    oneLabelImage.image = [UIImage  imageNamed:@"threeLabel.png"];
    oneLabelImage.backgroundColor = [UIColor clearColor];
    oneLabelImage.alpha = 0;
    [self addSubview:oneLabelImage];
    
    image1 =[[UIImageView alloc] initWithFrame:CGRectMake(32*NEWX,218*NEWX,126*NEWX,0)];
    image1.image = [UIImage  imageNamed:@"welcomeThree1.png"];
    image1.backgroundColor = [UIColor clearColor];
    [oneBgImage addSubview:image1];
    
    image3 =[[UIImageView alloc] initWithFrame:CGRectMake(80*NEWX,218*NEWX,127*NEWX,0)];
    image3.image = [UIImage  imageNamed:@"welcomeThree3.png"];
    image3.backgroundColor = [UIColor clearColor];
    [oneBgImage addSubview:image3];
    
    image2 =[[UIImageView alloc] initWithFrame:CGRectMake(69*NEWX,218*NEWX,96*NEWX,0)];
    image2.image = [UIImage  imageNamed:@"welcomeThree2.png"];
    image2.backgroundColor = [UIColor clearColor];
    [oneBgImage addSubview:image2];
}
-(void)showActionThree
{
    oneBgImage.alpha = 0;   //初始化一下
    oneLabelImage.alpha = 0;
    alphaIndex=0;
    image1.frame = CGRectMake(32*NEWX,218*NEWX,126*NEWX,0);
    image2.frame = CGRectMake(69*NEWX,218*NEWX,96*NEWX,0);
    image3.frame = CGRectMake(80*NEWX,218*NEWX,127*NEWX,0);
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
        [UIView animateWithDuration:0.15 animations:^{
           image2.frame=CGRectMake(69*NEWX,65*NEWX,96*NEWX,163*NEWX);

        }completion:^(BOOL finished){
            
            [self actionTwo];
        }];
    }
}
-(void)actionTwo
{
    [UIView animateWithDuration:0.15 animations:^{
        
        image1.frame=CGRectMake(32*NEWX,76*NEWX,126*NEWX,159*NEWX);
    
    }completion:^(BOOL finished){
        
        [self actionthree];
    }];
}
-(void)actionthree
{
    NSTimeInterval animationDuration2 =0.15;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationDuration2];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    image3.frame=CGRectMake(80*NEWX,75*NEWX,127*NEWX,160*NEWX);
    [UIView commitAnimations];
}
@end
