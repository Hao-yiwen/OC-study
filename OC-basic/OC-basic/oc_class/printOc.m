//
//  printOc.m
//  OC-basic
//
//  Created by 郝宜文 on 2024/6/7.
//
#import "printOc.h"

void functionExample(){
    NSLog(@"functionExample 11111");
}

void printOc(void){
    Fraction* fraction=[[Fraction alloc] init];
    [fraction setNumerator:2];
    [fraction setDenominator:10];
    [fraction display];
    [fraction extraMethod];
    
    [fraction showStatic];
    [fraction increament];
    [fraction showStatic];
    Fraction* fraction1=[[Fraction alloc]init];
    [fraction1 showStatic];
    [fraction1 increament];
    [fraction1 showStatic];
    
    Subclass* subclass=[[Subclass alloc]init];
    [subclass initV];
    [subclass distPlayVars];
    
//    AbstractClass* abstractclass = [[AbstractClass alloc]init];
//    [abstractclass abstractMethod];
    DirectClass *directClass = [[DirectClass alloc] init];
    [directClass abstractMethod];
    
    SelctorClass *selectorClass = [[SelctorClass alloc]init];
    if([selectorClass isKindOfClass:[NSObject class]]){
        NSLog(@"obj is kind of NSObject");
    }
    
    if([selectorClass conformsToProtocol:@protocol(NSCopying)]){
        NSLog(@"selectorClass conforms to NSCopying protocol");
    }
    
    if([selectorClass respondsToSelector:@selector(selectorMethod)]){
        NSLog(@"selectorClass responds to selectorMethod");
        [selectorClass selectorMethod];
    }
    
    if(![selectorClass respondsToSelector:@selector(noExistentMethod)]){
        NSLog(@"selectorClass does not respond to noExistentMethod");
    }
    
    [selectorClass processData:@"hello"];
    
    [selectorClass processData:@[@"您好", @"世界"]];
    
    [selectorClass processData:@{
        @"key1": @"value1",
        @"key2": @"value2"
    }];
    
    [selectorClass processData:@123];
    
    // @decralation 多层方法调用测试
    MyDatabase *database = [[MyDatabase alloc]init];
    MyPerson *myperson = [[MyPerson alloc]init];
    myperson.name = @"Yiwen";
    // NSMutableArray添加NSString对象
    [[database gennerateNewData] addObject:[NSString  stringWithFormat:@"name: %@",myperson.name]];
    // NSMutableArray添加myperson对象
    [[database gennerateNewData] addObject:myperson];
    NSLog(@"name is %@", ((MyPerson *)(database.data[0])).name);
    
    MyPerson* person = nil;
    if(person == nil){
        NSLog(@"person is nil");
    }
    
    int *intPtr=NULL;
    if(intPtr==NULL){
        NSLog(@"intPtr is NULL");
    }
    
    // 函数指针
    void (*fun1)(void) = NULL;
    if(fun1 == NULL){
        NSLog(@"functionExample is NULL");
    }
    
    fun1 = &functionExample;
    if(fun1 !=NULL){
        fun1();
    }

    
    NSLog(@"%f", PI);
    NSLog(@"Square of 10 is %d", SQUARE(10));
    
    
    NSLog(@"%s",OS);
    
    #define TEST 10323
    NSLog(@"%d", TEST);
    
    Printer* printer = [[Printer alloc]init];
    
    printer->_type = @"12321";
    printer.str = @"12321";
//    printer->_count=10;
//    printer->_name = @"name";
    
    NSLog(@"type is %@", printer->_type);
    NSLog(@"str is %@", printer.str);
//    NSLog(@"count is %d", printer->_count);
}
