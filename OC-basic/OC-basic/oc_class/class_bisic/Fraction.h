//
//  Fraction.h
//  OC-basic
//
//  Created by 郝宜文 on 2024/6/7.
//

#ifndef Fraction_h
#define Fraction_h
#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property NSInteger numerator, denominator;
- (void)display;
- (void)increament;
- (void)showStatic;
@end

#endif /* Fraction_h */
