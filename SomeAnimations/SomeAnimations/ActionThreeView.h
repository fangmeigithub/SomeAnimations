//
//  ActionThreeView.h
//  SomeAnimations
//
//  Created by liubaojian on 14/7/14.
//  Copyright © 2016年 liubaojian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActionThreeView : UIView
{
    UIImageView *oneBgImage;
    UIImageView  *oneLabelImage;
    UIImageView *image1;
    UIImageView *image2;
    UIImageView *image3;
    
    NSTimer *t;
    float alphaIndex;
}
-(void)initSubV;
-(void)showActionThree;
@end
