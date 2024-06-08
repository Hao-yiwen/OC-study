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
    
    // nsarray
    NSArray* array = @[@"1",@"2",@"3"];
    NSLog(@"array 是 %@",array);
    
    // nsmutablearray
    NSMutableArray* array2 = [[NSMutableArray alloc]init];
    [array2 addObject:@"1"];
    [array2 addObject:@"2"];
    
    NSLog(@"array2 是 %@",array2);
    
    // nsdictionary
    NSDictionary* dictionary = @{
        @"key1": @"value"
    };
    
    NSLog(@"nsdictionary 是 %@",dictionary);
    
    // nsmutabledictionary
    NSMutableDictionary* mutableDictonary = [[NSMutableDictionary alloc]init];
    [mutableDictonary setObject:@320 forKey:@"test"];
    [mutableDictonary setObject:@2312 forKey:@"dsadas"];
    NSLog(@"mutabledictionary 是 %@",mutableDictonary);
    
    // nsnumber
    NSNumber* number = @42;
    NSNumber* number1 = @13.21;
    NSLog(@"nsnumber打印 %@ %@",number, number1);
    NSLog(@"nsinteger打印 %d",[number intValue]);
    NSLog(@"nsinfloat打印 %d",[number1 floatValue]);
    
    // 常用类
    // nsdate
    NSDate *date = [NSDate now];
    NSLog(@"nsdate打印现在时间戳 %@",date);
    // 格式化时间
    NSLog(@"nsdate格式化 %@",[date descriptionWithLocale:[NSLocale currentLocale]]);
    
    // nsset
    // NSSet 只打印 1，2，3 是因为你在使用 setWithObjects: 方法时传递了两个 nil 值。setWithObjects: 方法的参数列表是一个以 nil 结尾的可变参数列表，第一个 nil 表示参数列表的结束，后面的所有参数都会被忽略。
    NSSet* set = [NSSet setWithObjects:@"1",@"2",@"3", nil, @"4", nil];
    NSLog(@"nsset 打印 %@",set);
    
    NSMutableSet *mutableSet = [[NSMutableSet alloc] init];
    [mutableSet addObject:@"10"];
    
    NSLog(@"nsmutableset 打印 %@", mutableSet);
    
    id obj= @"123";
    if ([obj isKindOfClass:[NSString class]]) {
        NSLog(@"obj 是字符串");
    }
    
    // cgfloat
    CGFloat f = 10.0;
    NSLog(@"f 是 %f",f);
    
    NSNumber* yes = [NSNumber numberWithBool:YES];
    NSNumber* no = [NSNumber numberWithBool:NO];
    
    NSLog(@"yes 是 %@ no 是 %@",yes,no);
    
    
}

@end

