//
//  AbstractClass.m
//  OC-basic
//
//  Created by 郝宜文 on 2024/6/7.
//

#import <Foundation/Foundation.h>
#import "AbstractClass.h"

@implementation AbstractClass

- (instancetype)init{
    if([self class] == [AbstractClass class]){
        [NSException raise:NSInternalInconsistencyException format:@"Cannot instance abstrcat class %@ directly",NSStringFromClass([self class])];
    }
    return [super init];
}

- (void)abstractMethod {
    [NSException raise:NSInternalInconsistencyException format:@"You muset override %@ in a subclass.",NSStringFromSelector(_cmd)];
}

@end
