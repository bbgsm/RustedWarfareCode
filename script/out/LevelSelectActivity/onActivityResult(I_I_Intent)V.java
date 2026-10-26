protected void onActivityResult(int p1, int p2, Intent p3) {
    switch (p1) {
        case 5:
            Runnable v0 = this.fileAddedCallback;
            ModsActivity.onFileSelectResult(this, p1, p2, p3, v0);
            break;
        default:
            super.onActivityResult(p1, p2, p3);
            break;
    }
}
