//
//  ActionFourView.h
//  SomeAnimations
//
//  Created by liubaojian on 14/7/14.
//  Copyright © 2016年 liubaojian. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ActionDelegete <NSObject>
-(void)ButtonClickBack;
@end
@interface ActionFourView : UIView
{
    UIImageView *oneBgImage;
    UIImageView  *oneLabelImage;
    UIImageView  *carImage;
    
    UIImageView *pinLaImagev;
    UIImageView *pinLaImagev1;
    
    NSTimer *t;
    NSTimer *t1;
    float alphaIndex;
    float lunMove;
}
@property(nonatomic,assign)id <ActionDelegete> myDelegate;
-(void)initSubV;
-(void)showActionFour;
-(void)carMove;
@end
