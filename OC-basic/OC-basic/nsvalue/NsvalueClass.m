//
//  NsvalueClass.m
//  OC-basic
//
//  Created by 郝宜文 on 2024/6/8.
//

#import <Foundation/Foundation.h>
#import "NsvalueClass.h"

void myFunction(NSValue *value){
    void *ptr = [value pointerValue];
    int *intPtr = (int*)ptr;
    NSLog(@"myFunction %p", ptr);
    NSLog(@"myFunction value is %d", *intPtr);
}

@implementation NsvalueClass

- (void)run {
    CGPoint point = CGPointMake(10, 10);
    CGPoint point1 = CGPointMake(20, 20);
    NSMutableArray* array = [[NSMutableArray  alloc] init];
    [array addObject:[NSValue valueWithPoint:point]];
    [array addObject:[NSValue valueWithPoint:point1]];
    for(NSValue* value in array){
        CGPoint p = [value pointValue];
        NSLog(@"point: %f, %f", p.x, p.y);
    }
    
    
    int value = 42;
    NSValue *pointerValue = [NSValue valueWithPointer:&value];
    myFunction(pointerValue);
}

@end
