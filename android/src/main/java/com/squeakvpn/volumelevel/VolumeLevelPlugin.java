package com.squeakvpn.volumelevel;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "VolumeLevel")
public class VolumeLevelPlugin extends Plugin {

    private VolumeLevel implementation = new VolumeLevel();

    @PluginMethod
    public void getVolume(PluginCall call) {
        VolumeLevel.VolumeInfo info = implementation.getVolume(getContext());
        JSObject ret = new JSObject();
        ret.put("volume", info.volume);
        ret.put("maxVolume", info.maxVolume);
        ret.put("volumePercentage", info.volumePercentage);
        call.resolve(ret);
    }
}
