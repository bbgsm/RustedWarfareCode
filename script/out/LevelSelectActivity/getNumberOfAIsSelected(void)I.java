    int getNumberOfAIsSelected() {
        if (this.custom) {
            return 4;
        }
        return this.aiCountSpinner.getSelectedItemPosition() + 1;
    }
