//
//  WelcomeViewController.m
//  SomeAnimations
//
//  Created by liubaojian on 14/7/14.
//  Copyright © 2016年 liubaojian. All rights reserved.
//

#import "WelcomeViewController.h"
#import "commonfile.h"
#import "ActionFourView.h"
#import "ActionOneView.h"
#import "ActionThreeView.h"
#import "ActionTwoView.h"

@interface WelcomeViewController ()
<UIScrollViewDelegate,ActionDelegete>
{
    UIView *headBgView;
    float alphaIndex;
    UIScrollView *sc;
    
    UIImageView *oneBgImage;
    UILabel     *oneLabel;
    
    ActionOneView *oneV;
    ActionTwoView *twoV;
    ActionThreeView *threeV;
    ActionFourView *fourV ;
    
    BOOL twoJ;
    BOOL threeJ;
    BOOL fourJ;
    
}
@end

@implementation WelcomeViewController


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    self.navigationController.navigationBar.hidden = YES;
    self.view.backgroundColor = [UIColor whiteColor];
}
-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:YES];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;

    sc=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width,self.view.bounds.size.height)];
    sc.contentSize=CGRectMake(0, 0,self.view.bounds.size.width*4,self.view.bounds.size.height).size;
    sc.showsHorizontalScrollIndicator = NO;
    sc.showsVerticalScrollIndicator = NO;
    sc.pagingEnabled = YES;
    sc.backgroundColor = [UIColor clearColor];
    sc.delegate = self;
    sc.scrollEnabled=YES;
    sc.bounces = NO;
    [self.view addSubview:sc];
    
    oneV = [[ActionOneView alloc]init];
    oneV.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    [oneV initSubV];
    [sc addSubview:oneV];
    
    twoV = [[ActionTwoView alloc]init];
    twoV.frame = CGRectMake(self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    [twoV initSubV];
    [sc addSubview:twoV];
    
    threeV = [[ActionThreeView alloc]init];
    threeV.frame = CGRectMake(self.view.bounds.size.width*2, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    [threeV initSubV];
    [sc addSubview:threeV];
    
    fourV = [[ActionFourView alloc]init];
    fourV.frame = CGRectMake(self.view.bounds.size.width*3, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    [fourV initSubV];
    fourV.myDelegate = self;
    [sc addSubview:fourV];
    
    [oneV showActionOne];
}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    double scXValue = scrollView.contentOffset.x;
    if (scXValue ==self.view.bounds.size.width&&twoJ==NO)
    {
        [twoV showActionTwo];
        twoJ = YES;
    }
    else if (scXValue ==2*self.view.bounds.size.width&&threeJ == NO)
    {
        [threeV showActionThree];
        threeJ = YES;
    }
    else if (scXValue ==3*self.view.bounds.size.width &&fourJ== NO)
    {
        [fourV showActionFour];
        fourJ = YES;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
@end
