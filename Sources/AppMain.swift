import SwiftUI

@main
struct MenuBarApp: App {
    @State private var isRecording = false

    var body: some Scene {
        MenuBarExtra("菜单栏应用", systemImage: "mic") {
            // 菜单内容
            Menu("文件") {
                Button("新建") {}
                Button("打开") {}
                Divider()
                Button("退出") {
                    NSApp.terminate(nil)
                }
            }

            Divider()

            Menu("编辑") {
                Button("撤销") {}
                Button("重做") {}
                Divider()
                Button("剪切") {}
                Button("复制") {}
                Button("粘贴") {}
            }

            Divider()

            // 切换状态
            Button {
                isRecording.toggle()
            } label: {
                Label(
                    isRecording ? "停止录音" : "开始录音",
                    systemImage: isRecording ? "stop.circle" : "record.circle"
                )
            }

            Divider()

            Button("关于") {}

            Button("设置...") {}
        }

        Window("菜单栏应用演示", id: "main") {
            ContentView(isRecording: $isRecording)
        }
        .defaultSize(width: 400, height: 300)
    }
}
