//
//  ViewController.m
//  Demo
//
//  Created by MAC on 2018/7/4.
//  Copyright © 2018年 Flame Grace. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+ClearSystemGestureEffect.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /* 多点击（按下立即抬起）几次，会发现btn不会变红，原因是系统手势与button事件冲突导致touchDown事件延迟调用，而touchUp事件会立即调用。
     UIControlStateHighlighted的状态被跳过了。如果按下去不立即抬起来，btn还是会变红的。
     */
    CGRect bounds = [UIScreen mainScreen].bounds;
    UIButton *btn = [[UIButton alloc]init];
    [btn setBackgroundImage:[self imageWithColor:[UIColor blueColor]] forState:UIControlStateNormal];
    [btn setBackgroundImage:[self imageWithColor:[UIColor redColor]] forState:UIControlStateHighlighted];
    [btn setTitle:@"取消" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    bounds.origin.y = bounds.size.height - 44;
    bounds.size.height = 44;
    btn.frame = bounds;
    
    /*
     调用下面的语句后不会再出现上述问题。无论怎么点都不会出现
     */
//    [self clearSystemGestureEffect];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}


@end
