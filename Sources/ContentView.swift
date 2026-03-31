import SwiftUI

struct ContentView: View {
    @Binding var isRecording: Bool

    var body: some View {
        VStack(spacing: 30) {
            Image(systemName: isRecording ? "waveform.circle.fill" : "waveform.circle")
                .font(.system(size: 80))
                .foregroundColor(isRecording ? .red : .secondary)

            Text(isRecording ? "正在录音..." : "未在录音")
                .font(.title)

            Text("点击菜单栏图标查看选项\n点击\"开始录音\"切换状态")
                .font(.caption)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}
