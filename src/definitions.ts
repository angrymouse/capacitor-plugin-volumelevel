export interface VolumeLevelPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
