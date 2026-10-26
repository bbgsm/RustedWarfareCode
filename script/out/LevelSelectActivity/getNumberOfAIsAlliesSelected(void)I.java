int getNumberOfAIsAlliesSelected() {
    int v0 = this.gameModeSpinner.getSelectedItemPosition();
    if (v0 > 0) {
        int v1 = 3;
        if (v0 <= v1) {
            return v0;
        }
    }
    v0 = 0;
    return v0;
}
