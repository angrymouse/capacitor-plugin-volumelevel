export interface GetVolumeResult {
  volume: number;
  maxVolume: number;
  volumePercentage: number;
}

export interface VolumeLevelPlugin {
  getVolume(): Promise<GetVolumeResult>;
}
