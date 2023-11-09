//
//  XYZPerson.m
//  oCDemo
//
//  Created by yw.hao on 2023/11/9.
//

#import "XYZPerson.h"

@implementation XYZPerson

- (void)sayHello {
    NSLog(@"Hello world, %@ %@!", self.firstName, self.lastName);
}

+ (instancetype)personWithFirstName:(NSString *)firstName lastName:(NSString *)lastName {
    XYZPerson *person = [[XYZPerson alloc] init];
    person.firstName = firstName;
    person.lastName = lastName;
    return person;
}

@end
