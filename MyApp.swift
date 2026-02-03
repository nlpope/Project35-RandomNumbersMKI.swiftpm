import SwiftUI
import GameplayKit

@main
struct MyApp: App
{
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

func testFunc()
{
    print(GKRandomSource.sharedRandom().nextInt())
    print(GKRandomSource.sharedRandom().nextInt(upperBound: 6))
}
