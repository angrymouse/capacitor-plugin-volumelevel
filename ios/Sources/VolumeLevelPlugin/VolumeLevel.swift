import Foundation
import AVFoundation

@objc public class VolumeLevel: NSObject {
    @objc public func getVolume() -> [String: Any] {

        let currentVolume = AVAudioSession.sharedInstance().outputVolume
        let maxVolume: Float = 1.0
        let volumePercentage = currentVolume * 100.0
        
        return [
            "volume": currentVolume,
            "maxVolume": maxVolume,
            "volumePercentage": volumePercentage
        ]
    }
}
