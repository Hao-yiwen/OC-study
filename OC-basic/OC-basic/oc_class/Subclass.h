//
//  SubClass.h
//  OC-basic
//
//  Created by yw.hao on 2024/6/7.
//

#ifndef SubClass_h
#define SubClass_h

@interface Superclass : NSObject
{
    int v;
}
@property int x;
- (void)initV;
@end

@interface Subclass :Superclass
{
    int w;
}

- (void)distPlayVars;
@end

#endif /* SubClass_h */
