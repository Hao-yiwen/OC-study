//
//  operation.m
//  OC-basic
//
//  Created by 郝宜文 on 2024/6/6.
//

#import <Foundation/Foundation.h>
#import "operation.h"

void printOperation(void){
    int number = 1234;
    int thousands = number / 1000;
    NSLog(@"res is %d", thousands);
    
    NSLog(@"res1 is %d", (number % 1000)/100);
    
    NSLog(@"%c%c%c",('H'+1),('e'+1),('l'+1));
    
    NSLog(@"%c%c%c",(('H'*2)%127),(('e'*2)%127),(('l' * 2) % 127));
    
    
    NSLog(@"%@",@(YES?"DAS":"FSSS"));
    
    
    switch (3) {
        case 1:
            NSLog(@"I am 1");
            break;
        default:
            NSLog(@"I am other");
            break;
    }
    
    NSString *str = [[NSString alloc]init];
    NSLog(@"%@ = lalall",str);
    
    NSArray *array=@[@"apple", @"banana", @"cherry"];
    for(NSString *item in array){
        NSLog(@"item %@",item);
        NSLog(@"item %@",[item uppercaseString]);
    }
}
