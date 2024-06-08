//
//  Exception.m
//  OC-basic
//
//  Created by 郝宜文 on 2024/6/8.
//

#import <Foundation/Foundation.h>
#import "Exception.h"

@implementation ExceptionClass

- (void)exceptionThrow{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    // 向数组添加一个字符串
    [array addObject:@"one"];
    for(NSString *item in array){
        NSLog(@"item: %@", item);
    }
//    @try {
//        NSLog(@"Object at index 5 is %@", [array objectAtIndex:5]);
//    } @catch (NSException *exception) {
//        NSLog(@"Caught an exception %@",exception);
//    } @finally {
//        NSLog(@"Finally block");
//    }
    
    NSArray<NSNumber *> *array2 = @[@1,@2,@3];
    NSInteger num = [array2 count];
    NSLog(@"array2 num are %ld",num);
    NSString *mainString = @"This is a long string";
    NSRange range = [mainString rangeOfString:@"long"];
    NSValue *value = [NSValue valueWithRange:range];
    NSLog(@"value: %@", value);
}

@end
