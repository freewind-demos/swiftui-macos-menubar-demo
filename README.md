# SwiftUI macOS MenuBarExtra 菜单栏应用

## 简介

演示 SwiftUI 中 MenuBarExtra 的用法，这是 macOS 14+ 新增的 API，用于创建菜单栏应用（类似 Spotlight、Dock 隐藏的应用）。

## 快速开始

```bash
cd swiftui-macos-menubar-demo
xcodegen generate
open SwiftUIMenuBarDemo.xcodeproj
# Cmd+R 运行
```

运行后观察屏幕顶部的菜单栏图标。

## 概念讲解

### 基础 MenuBarExtra

```swift
MenuBarExtra("应用名称", systemImage: "图标") {
    // 菜单内容
    Button("选项1") { }
    Button("选项2") { }
}
```

### 带状态的菜单栏

```swift
@State private var isActive = false

MenuBarExtra("应用", systemImage: isActive ? "circle.fill" : "circle") {
    Button {
        isActive.toggle()
    } label: {
        Label("切换", systemImage: isActive ? "on" : "off")
    }
}
```

### 菜单结构

```swift
MenuBarExtra {
    Menu("文件") {
        Button("新建") { }
        Divider()
        Button("退出") { }
    }

    Divider()

    Button("设置") { }
}
```

## 完整示例

```swift
@main
struct MyApp: App {
    @State private var count = 0

    var body: some Scene {
        MenuBarExtra("计数器", systemImage: "number") {
            Text("计数: \(count)")

            Divider()

            Button("加一") {
                count += 1
            }

            Button("重置") {
                count = 0
            }
        }
    }
}
```

## 完整讲解（中文）

### MenuBarExtra 的用途

- 菜单栏小工具
- 常驻后台的应用
- 快速访问功能
- 类似 Spotlight、Dock、应用通知图标

### 特点

- 应用不在 Dock 中显示
- 图标常驻菜单栏
- 点击显示菜单
- 可以有窗口也可以没有

### 系统要求

需要 macOS 14.0 (Sonoma) 或更高版本。
