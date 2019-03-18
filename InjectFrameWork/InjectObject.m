//
//  InjectObject.m
//  InjectFrameWork
//
//  Created by lyn on 2019/3/14.
//  Copyright © 2019年 lyn. All rights reserved.
//

#import "InjectObject.h"
#import <objc/message.h>
@implementation InjectObject

+ (void)load{
    NSLog(@"🍺🍺🍺🍺🍺🍺🍺🍺🍺");
    Method old = class_getInstanceMethod(objc_getClass("WCAccountLoginControlLogic"), NSSelectorFromString(@"onFirstViewRegester"));
    Method new = class_getInstanceMethod(self, @selector(xxonFirstViewRegester));
    method_exchangeImplementations(old, new);
}
- (void) xxonFirstViewRegester {
    NSLog(@"监听微信注册-----------");
}
@end
