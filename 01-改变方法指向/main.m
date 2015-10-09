//
//  main.m
//  01-改变方法指向
//
//  Created by qianfeng on 15-10-9.
//  Copyright (c) 2015年 肖喆. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+AOP.h"
#import <objc/runtime.h>
#import "NSObject+AOP.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {

        
        //AOP 面向切面思想
        //在不更改,原来具体实现的情况下,增加功能,或者实现某些具体的控制
        
        /*
        //class_getInstanceMethod 通过Class 获得实例方法的具体描述结构体Method
        Method oldMethod =  class_getInstanceMethod([NSArray class], @selector(lastObject));
        Method newMethod  = class_getInstanceMethod([NSArray class], @selector(my_lastObject));

        //改变两个方法的具体指针指向
        method_exchangeImplementations(oldMethod, newMethod);
        */
        
        
 
        
        /*
        NSArray * array = @[@"a",@"b",@"c"];
        
        
        NSString * str = [array lastObject];
        
       
        NSLog(@"%@",str);
       */
        
        
//        NSString * str2 = [array my_lastObject];
//        
//        NSLog(@"%@",str2);
        
       
        
    }
    
    
    return 0;
    
}
