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
    //(signed) int btwn -2bil and 2bil
    print(GKRandomSource.sharedRandom().nextInt())
    //unsigned int btwn 0 and 5
    //identical to old arc4random() method
    print(GKRandomSource.sharedRandom().nextInt(upperBound: 6))
    //random bool
    print(GKRandomSource.sharedRandom().nextBool())
}
