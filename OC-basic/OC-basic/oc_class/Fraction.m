//
//  Fraction.m
//  OC-basic
//
//  Created by 郝宜文 on 2024/6/7.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@implementation Fraction
static int number = 0;
- (void)display{
    NSString *numeratorString = [[NSString alloc] initWithFormat:@"%ld", (long)_numerator];
    NSString *denominatorString = [[NSString alloc] initWithFormat:@"%ld", (long)_denominator];
    NSLog(@"%@ %@",numeratorString,denominatorString);
}


- (void)increament {
    number = number +1;
}

- (void)showStatic {
    NSLog(@"静态变量是 %d",number);
}

@end
