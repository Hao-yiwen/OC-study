//
//  printLs.m
//  OC-basic
//
//  Created by yw.hao on 2024/6/6.
//

#import "printf.h"
#import <Foundation/Foundation.h>

//int integer = 42;
//unsigned int uinteger = 42;
//float floatValue = 3.14;
//char character = 'A';
//char *cString = "Hello, World!";
//NSString *ocString = @"Hello, Objective-C!";
//void *pointer = &integer;
//
//NSLog(@"Signed integer: %d", integer);
//NSLog(@"Unsigned integer: %u", uinteger);
//NSLog(@"Hexadecimal: %x", uinteger);
//NSLog(@"Octal: %o", uinteger);
//NSLog(@"Float: %f", floatValue);
//NSLog(@"Character: %c", character);
//NSLog(@"C String: %s", cString);
//NSLog(@"Objective-C String: %@", ocString);
//NSLog(@"Pointer: %p", pointer);

void printLs(void){
    int integer = 42;
    unsigned int uinteger = 42;
    float floatValue = 3.14;
    char charater = 'A';
    char* cString = "Hello, Wordl";
    NSString* ocString = @"Hello world";
    int *poninter = &integer;
    NSLog(@"pre value %d", integer);
    *poninter = 30;
    NSLog(@"cur value %d", integer);
    // 字符串在c中会自动分配内存空间 而整数类型不会被自动分配 所以下列写法无效
    NSLog(@"Unsigned %u",uinteger);
    
    NSLog(@"Unsigned %x", uinteger);
    
    NSLog(@"Unsigned %o", uinteger);
    
    NSLog(@"float %f", floatValue);
    
    NSLog(@"float %2.1f", floatValue);
    
    NSLog(@"float %e", floatValue);
    
    NSLog(@"char %c", charater);
    
    NSLog(@"string %s", cString);
    
    NSLog(@"string %@", ocString);
    
    NSLog(@"ptr %p", poninter);
    
}
