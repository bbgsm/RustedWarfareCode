private void d(String p1) {
    com.corrodinggames.rts.gameFramework.k1104.d("Loading survival waves");
    this.N = true;
    String[] lines = p1.split("\n");
    int length = lines.length;
    int totalTime = 0;
    int waveNumber = 0;
    int index = 0;
    while (index < length) {
        String line = lines[index];
        int nextWaveNumber = waveNumber + 1;
        com.corrodinggames.rts.gameFramework.n.q1301 wave = new com.corrodinggames.rts.gameFramework.n.q1301(this);
        if (wave.a(line)) {
            totalTime += (int) wave.d;
            wave.e = totalTime;
            int waveTime = wave.e;
            com.corrodinggames.rts.gameFramework.k1104.d("Adding wave " + nextWaveNumber + " at " + waveTime);
            this.O.add(wave);
        }
        index++;
        waveNumber = nextWaveNumber;
    }
}
