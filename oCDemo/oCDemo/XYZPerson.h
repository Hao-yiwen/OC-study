//
//  XYZPerson.h
//  oCDemo
//
//  Created by yw.hao on 2023/11/9.
//

#import <Foundation/Foundation.h>

@interface XYZPerson : NSObject

@property (copy, nonatomic) NSString *firstName;
@property (copy, nonatomic) NSString *lastName;

- (void)sayHello;
+ (instancetype)personWithFirstName:(NSString *)firstName lastName:(NSString *)lastName;

@end
