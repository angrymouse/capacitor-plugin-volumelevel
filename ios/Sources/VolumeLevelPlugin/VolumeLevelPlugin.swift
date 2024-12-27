import Foundation
import Capacitor

@objc(VolumeLevelPlugin)
public class VolumeLevelPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "VolumeLevelPlugin"
    public let jsName = "VolumeLevel"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "getVolume", returnType: CAPPluginReturnPromise)
    ]
    
    private let implementation = VolumeLevel()

    @objc func getVolume(_ call: CAPPluginCall) {
        let volumeData = implementation.getVolume()
        call.resolve(volumeData)
    }
}
