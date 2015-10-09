//
//  NSArray+AOP.m
//  01-改变方法指向
//
//  Created by qianfeng on 15-10-9.
//  Copyright (c) 2015年 肖喆. All rights reserved.
//

#import "NSArray+AOP.h"
#import "NSObject+AOP.h"

@implementation NSArray (AOP)

//类第一次编译,运行就会调用一次
//只要参与到编译运行,一定会被调用一次
+(void)load
{
    [self aop_ExchangeSelector:@selector(lastObject) andNewSelector:@selector(my_lastObject)];
    
}

- (id)my_lastObject
{
    /*
    NSString * str = @"abcde";
    
    return str;
     */
    
    //1.做一些操作
    
    id value = [self my_lastObject];//[self lastObject]
    
    //2.做一些操作
    NSString * str = [NSString stringWithFormat:@"xiaozhe : %@",value];
    return str;
}

@end
