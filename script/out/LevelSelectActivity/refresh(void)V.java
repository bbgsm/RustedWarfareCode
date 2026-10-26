public void refresh() {
    this.refreshLevelsHandler.post(this.refreshLevelsRunnable);
    return;
}
