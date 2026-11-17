# OC-study

[![Objective-C](https://img.shields.io/badge/language-Objective--C-438EFF)](https://developer.apple.com/documentation/objectivec)
[![平台](https://img.shields.io/badge/platform-macOS%20%7C%20iOS-111111)](https://developer.apple.com)
[![Xcode](https://img.shields.io/badge/Xcode-15.0%20%2F%2015.1-1575F9)](https://developer.apple.com/xcode/)

个人 **Objective-C 学习记录**。仓库里是三份独立的 Xcode 工程，用来对照语法和 Foundation 的常见写法，没有业务功能，也没有 CocoaPods、Swift Package 或其它第三方依赖。

| 工程 | 类型 | 部署目标 | 实际内容 |
| --- | --- | --- | --- |
| [`oCDemo`](oCDemo) | macOS 命令行工具 | macOS 14.0 | 入门：`#import`、`NSLog`、一个 `XYZPerson` 类 |
| [`OC-basic`](OC-basic) | macOS 命令行工具 | macOS 14.2 | 语法与 Foundation 练习，由 `main.m` 顺序调用 |
| [`ocUI`](ocUI) | iOS App | iOS 17.0 | Xcode 应用模板，界面和测试都还是脚手架 |

工程文件里的最近一次升级检查：`oCDemo`、`ocUI` 为 `1500`（Xcode 15.0），`OC-basic` 为 `1510`（Xcode 15.1）。

## 内容目录

### oCDemo

入口是 [`oCDemo/oCDemo/main.m`](oCDemo/oCDemo/main.m)。文件前半是笔记式注释（OC 与 C 的关系、`.m`、`#import`、Foundation、`@autoreleasepool`、`NSLog`），后半会：

- 用 `NSLog` 打印 `Hello, World!` 和一个 `NSString`
- 用 `printf` 打印该字符串的地址，以及中文「您好」
- 用类方法 `+personWithFirstName:lastName:` 创建 [`XYZPerson`](oCDemo/oCDemo/XYZPerson.h)，再调用 `-sayHello`

[`itcast.h`](oCDemo/oCDemo/itcast.h) / [`itcast.c`](oCDemo/oCDemo/itcast.c) 只有头文件保护宏和 `#include <stdio.h>`，没有函数实现，`main.m` 也没有引用它们。

### OC-basic

入口是 [`OC-basic/OC-basic/main.m`](OC-basic/OC-basic/main.m)。它先 `malloc` 一个 `int` 并用 `printf` 打印，再在 `@autoreleasepool` 里按下面的顺序调用各示例。预编译头 [`PrefixHeader.pch`](OC-basic/OC-basic/PrefixHeader.pch) 在 `DEBUG` 下把 `NSLog` 改成 `fprintf` 打到标准错误；非 `DEBUG` 时这个宏展开为空，日志不会输出。

| 目录 | 调用入口 | 代码里实际在练什么 |
| --- | --- | --- |
| [`oc_class/protocol`](OC-basic/OC-basic/oc_class/protocol) | `SampleClass` | 协议 `Test`（含 `@required`）、属性、无参 / 单参 / 双参方法、`NSString` 拼接与截取 |
| [`base`](OC-basic/OC-basic/base) | `printLs` / `printController` / `printOperation` | 格式化输出与指针改值、数组指针；`BOOL` 与 `if`；整除取位、字符运算、三元运算符、`switch`、`for-in` |
| [`oc_class`](OC-basic/OC-basic/oc_class) | `printOc` | 见下方分项 |
| [`exception`](OC-basic/OC-basic/exception) | `ExceptionClass` | 向 `NSMutableArray` 加元素并遍历、`count`、`rangeOfString:` 装进 `NSValue`。`@try` / `@catch` 整段被注释，**没有抛出或捕获异常** |
| [`nsvalue`](OC-basic/OC-basic/nsvalue) | `NsvalueClass` | 用 `NSValue` 包装 `CGPoint` 和 `int *` |
| [`block`](OC-basic/OC-basic/block) | `BlockClass` | Block 的声明、调用、捕获局部变量、作为参数；以及 `NSString` / `NSMutableString`、`NSArray` / `NSMutableArray`、`NSDictionary` / `NSMutableDictionary`、`NSNumber`、`NSDate`、`NSSet` / `NSMutableSet`、`id`、`CGFloat` |

`printOc` 覆盖的分项目录：

- [`class_bisic/Fraction`](OC-basic/OC-basic/oc_class/class_bisic/Fraction.h)：类、属性、实例方法，以及文件内 `static` 变量
- [`Fraction+Extra`](OC-basic/OC-basic/oc_class/class_bisic/Fraction+Extra.h)：Category，增加 `-extraMethod`
- [`Subclass`](OC-basic/OC-basic/oc_class/class_bisic/Subclass.h)：`Superclass` / `Subclass` 继承，子类读取父类实例变量
- [`AbstractClass`](OC-basic/OC-basic/oc_class/class_bisic/AbstractClass.h) 与 [`DirectClass`](OC-basic/OC-basic/oc_class/class_bisic/DirectClass.h)：约定一个「抽象」方法，由 `DirectClass` 实现。直接创建 `AbstractClass` 的代码被注释掉了
- [`SelectorClass`](OC-basic/OC-basic/oc_class/class_bisic/SelectorClass.h)：`isKindOfClass:`、`conformsToProtocol:`、`respondsToSelector:`，以及用 `id` 区分 `NSString` / `NSArray` / `NSDictionary`
- [`DataArg`](OC-basic/OC-basic/oc_class/DataArg)：`MyDatabase` 返回 `NSMutableArray`，放入 `NSString` 和 `MyPerson`；随后演示 `nil`、`NULL` 和函数指针
- [`macro.h`](OC-basic/OC-basic/oc_class/macro.h)：`PI`、`SQUARE`、按平台定义的 `OS` 字符串
- [`variable`](OC-basic/OC-basic/oc_class/variable)：`@public` / `@protected` / `@private` 实例变量，以及 `enum` 和 `NS_ENUM`

### ocUI

[`ocUI/ocDemo`](ocUI/ocDemo) 是 Xcode 的 iOS App 模板：

- Bundle ID `com.yiwen.ocDemo`，Marketing Version `1.0`，Build `1`
- [`Main.storyboard`](ocUI/ocDemo/Base.lproj/Main.storyboard) 只有一个空白 `ViewController`（系统背景色），[`ViewController.m`](ocUI/ocDemo/ViewController.m) 的 `viewDidLoad` 没有额外逻辑
- `AppDelegate` / `SceneDelegate` 保持模板实现，Scene 配置在 [`Info.plist`](ocUI/ocDemo/Info.plist)
- [`ocDemoTests`](ocUI/ocDemoTests/ocDemoTests.m) 与 [`ocDemoUITests`](ocUI/ocDemoUITests/ocDemoUITests.m) 是 XCTest 模板：`testExample` 没有断言，UI 测试只会启动应用

## 技术栈

- 语言：Objective-C，源文件为 `.h` / `.m`，外加 `oCDemo` 里一个空的 `.c`
- 框架：macOS 工程使用 Foundation（`OC-basic` 还用到 `CGPoint`、`CGFloat`）；`ocUI` 使用 UIKit
- 工程：三个独立的 `.xcodeproj`，没有 Workspace 把它们合在一起
- 依赖：无。不需要 `pod install` 或解析 Swift Package

## 目录结构

```text
.
├── oCDemo/                  macOS 命令行入门
│   ├── oCDemo/              main.m、XYZPerson、空的 itcast.c
│   └── oCDemo.xcodeproj
├── OC-basic/                macOS 命令行语法练习
│   ├── OC-basic/
│   │   ├── main.m
│   │   ├── PrefixHeader.pch
│   │   ├── base/            格式化、分支、运算符
│   │   ├── block/
│   │   ├── exception/
│   │   ├── nsvalue/
│   │   └── oc_class/        类、继承、协议、宏、枚举
│   └── OC-basic.xcodeproj   含共享 scheme OC-basic
└── ocUI/                    iOS App 模板
    ├── ocDemo/              源码、Storyboard、Info.plist、Assets
    ├── ocDemoTests/
    ├── ocDemoUITests/
    └── ocDemo.xcodeproj
```

仓库只提交了 `OC-basic` 的共享 scheme（`xcshareddata/xcschemes/OC-basic.xcscheme`）。`oCDemo` 和 `ocUI` 的 scheme 在 `xcuserdata` 里，换一台电脑用 Xcode 打开时通常会重新生成。

## 环境要求

- macOS，并安装 **Xcode 15** 或与工程升级版本相符的更新版本
- 命令行构建需要已安装 Xcode 的 `xcodebuild`（完整 Xcode，而不是只有 Command Line Tools 时的残缺工具链）
- `oCDemo`、`OC-basic` 选择 Mac 作为运行目标
- `ocUI` 需要 iOS 17 模拟器或真机；签名使用各目标自己的 Bundle ID

本仓库不能在 Linux 上按这些工程直接构建：Apple 的 Foundation / UIKit 和 `xcodebuild` 都不在 Linux 工具链里。

## 安装与运行

克隆后不需要安装依赖。在 Xcode 里打开对应的 `.xcodeproj`，选中目标后运行即可。

命令行示例（在各自工程目录中执行）。下面三条都指定了本仓库内的 DerivedData 目录，避免写到用户主目录。

**OC-basic**（仓库里有共享 scheme）：

```bash
cd OC-basic
xcodebuild -project OC-basic.xcodeproj -scheme OC-basic -configuration Debug -derivedDataPath build
./build/Build/Products/Debug/OC-basic
```

**oCDemo**（用 target，不依赖本机 scheme）：

```bash
cd oCDemo
xcodebuild -project oCDemo.xcodeproj -target oCDemo -configuration Debug -derivedDataPath build
./build/Build/Products/Debug/oCDemo
```

**ocUI**（模拟器编译；运行需要本机已安装的模拟器名称）：

```bash
cd ocUI
xcodebuild -project ocDemo.xcodeproj -target ocDemo -sdk iphonesimulator -configuration Debug -derivedDataPath build CODE_SIGNING_ALLOWED=NO
```

在 Xcode 里对 `ocDemo` scheme 执行 Test，会跑 `ocDemoTests` 和 `ocDemoUITests`。这两套测试没有业务断言。

### 验证情况

在编写本文件的 Linux 环境中核对过：

- `xcodebuild` 不存在
- Clang 为 Ubuntu 18.1.3，系统有 GNU Objective-C 运行时头文件
- 不存在 `Foundation.h`

因此上面的 `xcodebuild` 命令**没有在本环境实际执行**，也不能用 GNU 运行时替代这两个 macOS 工程和这个 iOS 工程。

## 备注

- [`OC-basic/OC-basic/base/printLs.m`](OC-basic/OC-basic/base/printLs.m) 写了 `#import "printf.h"`，仓库里没有这个头文件。按当前源码编译 `OC-basic` 时，这一行会找不到头文件。其余调用链都以该文件能编过为前提。
- `OC-basic` 的 `main.m` 用 `malloc` 分配了一个 `int`，函数结束前没有 `free`。
- `NsvalueClass` 使用 `CGPoint` 和 `-[NSValue valueWithPoint:]`。这是 macOS 图形相关 API，工程本身是 macOS Command Line Tool。
- 没有截图资源，界面工程也还是空白模板，所以这里不放运行效果图。
- [`.gitignore`](.gitignore) 只忽略 `*.xcuserstate`，仓库里仍然跟踪了部分 `xcuserdata`。
