protected android.app.Dialog onCreateDialog(int p1) {
    switch (p1) {
        case 0:
            android.app.ProgressDialog v0 = new android.app.ProgressDialog(this);
            this.progressDialog = v0;
            this.progressDialog.setProgressStyle(0);
            this.progressDialog.setMessage("Loading...");
            this.progressDialog.setCancelable(false);
            return this.progressDialog;
        default:
            return null;
    }
}
