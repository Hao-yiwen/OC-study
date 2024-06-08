//
//  SamepleClass.m
//  OC-basic
//
//  Created by 郝宜文 on 2024/6/8.
//

#import <Foundation/Foundation.h>
#import "SampleClass.h"

@implementation SampleClass
- (instancetype)init{
    self = [super init];
    if(self){
        self.name = @"name";
        self.age = 30;
    }
    return self;
}

- (void)sampleMethod{
    NSString *str = @"dsadsads";
    NSString *str2=[str stringByAppendingString:@"12321"];
    NSString *str3=[str2 substringToIndex:0 ];
    NSLog(@"str3: %@", str3);
    NSLog(@"%@", str2);
    NSLog(@"Hello %@| you are %d years old", self.name, self.age);
}
- (void)makeSome {
    NSLog(@"make some achieve...");
}

- (void)makeOther {
}


- (void)methodWithTwoArg:(int)arg1 aaa:(int)arg2 {
    NSLog(@"你有两个参数 %d %d", arg1, arg2);
}

- (void)methodWithOneArg:(int)arg {
    NSLog(@"当前只有一个参数 %d", arg);
}

@end
