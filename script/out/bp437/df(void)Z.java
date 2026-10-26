private strictfp boolean df() {
    if (this.aw != null) {
        return false;
    }
    if (this.ay < 2) {
        return false;
    }
    if (this.y() > 0.5d) {
        if (this.Y > 150.0f) {
            return true;
        }
        if (this.Z > 150.0f) {
            return true;
        }
        return false;
    } else {
        if (this.Y > 300.0f) {
            return true;
        }
        if (this.Z > 300.0f) {
            return true;
        }
        return false;
    }
}
