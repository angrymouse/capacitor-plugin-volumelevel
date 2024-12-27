package com.squeakvpn.volumelevel;

import android.content.Context;
import android.media.AudioManager;

public class VolumeLevel {

    public VolumeInfo getVolume(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
        int volume = audioManager.getStreamVolume(AudioManager.STREAM_MUSIC);
        int maxVolume = audioManager.getStreamMaxVolume(AudioManager.STREAM_MUSIC);
        float volumePercentage = ((float) volume / (float) maxVolume) * 100f;
        return new VolumeInfo(volume, maxVolume, volumePercentage);
    }


    public static class VolumeInfo {
        public int volume;
        public int maxVolume;
        public float volumePercentage;

        public VolumeInfo(int volume, int maxVolume, float volumePercentage) {
            this.volume = volume;
            this.maxVolume = maxVolume;
            this.volumePercentage = volumePercentage;
        }
    }
}
