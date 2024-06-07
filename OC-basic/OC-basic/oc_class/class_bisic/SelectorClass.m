//
//  SelectorClass.m
//  OC-basic
//
//  Created by 郝宜文 on 2024/6/7.
//

#import <Foundation/Foundation.h>
#import "SelectorClass.h"

@implementation SelctorClass

- (void)selectorMethod {
    NSLog(@"selector method.");
}

- (id)copy{
    SelctorClass *copy = [[[self class]alloc] init];
    return copy;
}

- (void)processData:(id)someData{
    if([someData isKindOfClass:[NSString class]]){
        NSLog(@"Data is a string");
    } else if([someData isKindOfClass:[NSArray class]]){
        NSArray* dataArray = (NSArray*)someData;
        NSLog(@"First element of array: %@",dataArray[0]);
    } else if([someData isKindOfClass:[NSDictionary class]]){
        NSDictionary* dir = (NSDictionary*)someData;
        NSLog(@"keys are %@",[dir allKeys]);
    } else {
        NSLog(@"Data is of unknown type");
    }
}
@end
