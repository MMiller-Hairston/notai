import SwiftUI
import libnotai

@main
struct NotAiApp: App {
    init() {

    }

    var body: some Scene {
        WindowGroup("NotAi") {
            Text(String(cString: hello()))
        }
    }
}
