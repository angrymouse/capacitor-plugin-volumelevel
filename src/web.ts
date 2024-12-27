import { WebPlugin } from '@capacitor/core';

import type { VolumeLevelPlugin } from './definitions';

export class VolumeLevelWeb extends WebPlugin implements VolumeLevelPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
