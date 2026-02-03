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
    
    //randomly rolling a 6sided dice
    let d6 = GKRandomDistribution.d6()
    print(d6.nextInt())
    //randomly rolling a 20sided dice
    let d20 = GKRandomDistribution.d20()
    print(d20.nextInt())
    //randomly rolling an 11k sided dice
    let dCrazy = GKRandomDistribution(lowestValue: 1, highestValue: 11000)
    print(dCrazy.nextInt())
    
    //prints rando numbers from 1 to 6 in a random order
    let shuffled = GKShuffledDistribution.d6()
    print(shuffled.nextInt())
    print(shuffled.nextInt())
    print(shuffled.nextInt())
    print(shuffled.nextInt())
}
