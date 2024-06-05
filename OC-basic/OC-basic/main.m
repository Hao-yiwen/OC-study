//
//  main.m
//  OC-basic
//
//  Created by 郝宜文 on 2024/6/6.
//

#import <Foundation/Foundation.h>

@protocol Test <NSObject>
- (void) makeSome;
@end

@interface SampleClass : NSObject <Test>
@property (nonatomic,strong) NSString *name;
@property (nonatomic,assign) int age;
- (instancetype)init;

- (void)sampleMethod;
- (void)methodWithOneArg:(int)arg;
- (void)methodWithTwoArg:(int)arg1 aaa:(int)arg2;
@end

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
    NSLog(@"%@", str2);
    NSLog(@"Hello %@| you are %d years old", self.name, self.age);
}
- (void)makeSome { 
    NSLog(@"make some achieve...");
}

- (void)methodWithTwoArg:(int)arg1 aaa:(int)arg2 {
    NSLog(@"你有两个参数 %d %d", arg1, arg2);
}

- (void)methodWithOneArg:(int)arg {
    NSLog(@"当前只有一个参数 %d", arg);
}

@end


int main(int argc, const char * argv[]) {
//    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int*p = (int*)malloc(sizeof(int));
    *p = 10;
    printf("%d", *p);
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!111111");
        
        SampleClass *sampleClass = [[SampleClass alloc] init];
        [sampleClass sampleMethod];
        [sampleClass makeSome];
        [sampleClass methodWithOneArg:30];
        [sampleClass methodWithTwoArg:20 aaa:40];
    }
    return 0;
}
