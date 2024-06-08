//
//  SampleClass.h
//  OC-basic
//
//  Created by 郝宜文 on 2024/6/8.
//

#ifndef SampleClass_h
#define SampleClass_h


@protocol Test <NSObject>
- (void) makeSome;

@required
- (void) makeOther;
@end

@interface SampleClass : NSObject <Test>
@property (nonatomic,strong) NSString *name;
@property (nonatomic,assign) int age;
- (instancetype)init;

- (void)sampleMethod;
- (void)methodWithOneArg:(int)arg;
- (void)methodWithTwoArg:(int)arg1 aaa:(int)arg2;
@end


#endif /* SampleClass_h */
