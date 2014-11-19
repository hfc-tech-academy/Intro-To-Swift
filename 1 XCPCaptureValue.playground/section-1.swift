// Playground - noun: a place where people can play

import UIKit
import XCPlayground

let values = (0...100)

let sineArraySize = 64
let frequency1 = 4.0
let phase1 = 0.0
let amplitude1 = 2.0
let sineWave = (0..<sineArraySize).map {
    amplitude1 * sin(2.0 * M_PI / Double(sineArraySize) * Double($0) * frequency1 + phase1)
}

for value in sineWave {
    XCPCaptureValue( "SineWave \(frequency1)", value )
}
