boolean getTeamedUpSelecteed() {
    int v0 = this.gameModeSpinner.getSelectedItemPosition();
    int v1 = 4;
    if (v0 != v1) {
        return true;
    }
    return false;
}
