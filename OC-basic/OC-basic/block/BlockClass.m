//
//  BlockClass.m
//  OC-basic
//
//  Created by 郝宜文 on 2024/6/8.
//

#import <Foundation/Foundation.h>
#import "BlockClass.h"

typedef int(^testBlock)(int);

@interface BlockClass()

- (int)processBlock:(testBlock)block;

@end

@implementation BlockClass

- (void)blockTest {
    // 简单的块
    void (^simpleBlock)(void) = ^{
        NSLog(@"这是一个简单的块");
    };
    
    simpleBlock();
    
    // 有参数和返回值的块
    int (^sumBlock)(int,int) = ^int(int a, int b){
        return a+b;
    };
    
    NSLog(@"有参数和返回值的block %d", sumBlock(10, 15));
    
    // 捕获局部变量 闭包块
    int tmp = 10;
    int (^mutilyBlock)(int) = ^int(int a){
        return a*tmp;
    };
    
    NSLog(@"闭包块的返回值为 %d",mutilyBlock(10));
    
    // 将块作为参数传递
    NSInteger res = [self processBlock:^int(int a){
        return a*10;
    }];
    NSLog(@"将块作为参数传递 %ld", res);
}

- (int)processBlock:(testBlock)block{
    return block(10);
}

- (void)baseTypeTest {
    // nsstring
    NSString *string = @"hello world";
    
    //nsmutableString
    
    NSMutableString* mutableString = [[NSMutableString alloc] init];
    [mutableString appendString:@"hello world"];
    NSLog(@"mutableString 是 %@",mutableString);
}

@end

