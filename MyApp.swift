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
    //random floating point val btwn 0 and 1
    print(GKRandomSource.sharedRandom().nextUniform())
    
    //gameplay kits arc4RandomSource duplicate (predictable, not truly random) spits out rando btwn 0 & 20
    let arc4 = GKARC4RandomSource()
    print(arc4.nextInt(upperBound: 20))
    //more complex and more random number btwn 0 & 20
    let mersenne = GKMersenneTwisterRandomSource()
    print(mersenne.nextInt(upperBound: 20))
}
