//
//  NSObject+ClearSystemGestureEffect.h
//
//  Created by FlameGrace on 2018/5/16.
// 消除系统手势与Touch事件冲突

#import <UIKit/UIKit.h>


@interface NSObject (ClearSystemGestureEffect)

- (void)clearSystemGestureEffect;

@end
