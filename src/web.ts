import { WebPlugin } from '@capacitor/core';

import type { VolumeLevelPlugin, GetVolumeResult } from './definitions';

export class VolumeLevelWeb extends WebPlugin implements VolumeLevelPlugin {
  async getVolume(): Promise<GetVolumeResult> {
    console.warn('VolumeLevel: getVolume is not implemented on web. Returning default values.');
    return {
      volume: 0,
      maxVolume: 0,
      volumePercentage: 0,
    };
  }
}
