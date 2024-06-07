//
//  SubClass.m
//  OC-basic
//
//  Created by yw.hao on 2024/6/7.
//

#import <Foundation/Foundation.h>
#import "Subclass.h"

@implementation Superclass

- (void)initV {
    self.x = 30;
    v = 20;
}

@end

@implementation Subclass

- (void)distPlayVars{
    w = 20;
    NSLog(@"%d %d %d",v,w,self.x);
}
@end
