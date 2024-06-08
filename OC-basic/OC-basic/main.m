//
//  main.m
//  OC-basic
//
//  Created by 郝宜文 on 2024/6/6.
//

#import <Foundation/Foundation.h>
#import "printLs.h"
#import "controller.h"
#import "operation.h"
#import "printOc.h"
#import "SampleClass.h"
#import "Exception.h"
#import "NsvalueClass.h"
#import "BlockClass.h"

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
        
        printLs();
        
        printController();
        
        printOperation();
        // oc对象部分学习
        printOc();
        
        // Exception
        ExceptionClass* exceptionClass = [[ExceptionClass alloc] init];
        [exceptionClass exceptionThrow];
        
        // nsvalue
        NsvalueClass* nsvalueClass = [[NsvalueClass alloc] init];
        [nsvalueClass run];
        
        BlockClass* blockClass = [[BlockClass alloc] init];
        [blockClass blockTest];
        [blockClass baseTypeTest];
    }
    return 0;
}
