/**
 1. OC相对与C
    a. 在C的基础上新增了一部分面向对象的语法
    b.将c的复杂部分封装的更简单
    c.oc完全兼容c

 2.oc的源代码文件的后缀名是.m m代表message 代表oc中最重要的一个机制 消息机制。
    c语言的源文件后缀是.c
 
 3.main函数仍然是oc程序的入口
    int类型的返回值 代表程序的结束状态
    main函数的参数：荏苒可以接受用户在运行程序时传递数据给程序，参数也可以不要。
 
 4.#import指令
    1）以#开头，是1个预处理指令
    2）作用 是#inclue的增强版 将文件的内容在预编译时候拷贝到写指令的地方
    3）增强 同一个文件无论#import多少次，只会包含一次
 
 5.框架
    1）是一个功能集 苹果和第三方将一些在程序开发中经常用到的功能先写好，把这些功能封装在1个1个的类中或函数中，讲这些函数和几何叫框架
 
    有点像c语言的函数库。
    2）Foundation框架。
        Foundation: 基础 这个框架提供了一些最基础的功能 输入和输出，一些数据类型

        Foundation.h包含了Foundation框架中所有其他的头文件。
 
 6.@autoreleasepool 自动释放池
 
 7.NSLog函数 -- 属于Foundation
    1）是printf函数的增强版 向控制台输出信息
    2）语法
        NSLog(@"格式字符串", 变量列表);
 
        简单版本：
            NSLog(@"Hello, World!");
    3) 增强
        a. 输出一些调试相关信息
    
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        printf("您好");
    }
    return 0;
}
