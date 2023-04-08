enum AudioState {
  playing,
  paused,
  stop,
}

void main() {
  const audioState = AudioState.paused;
  switch (audioState) {
    case AudioState.playing:
      print('audio sedang diputar');
      break;

    case AudioState.paused:
      print('audio terjeda');
      break;

    case AudioState.stop:
      print('audio berhenti');
      break;
    default:
      print('Tidak ada yang diputar');
  }
}
