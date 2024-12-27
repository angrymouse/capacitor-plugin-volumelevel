import { registerPlugin } from '@capacitor/core';

import type { VolumeLevelPlugin } from './definitions';

const VolumeLevel = registerPlugin<VolumeLevelPlugin>('VolumeLevel', {
  web: () => import('./web').then((m) => new m.VolumeLevelWeb()),
});

export * from './definitions';
export { VolumeLevel };
