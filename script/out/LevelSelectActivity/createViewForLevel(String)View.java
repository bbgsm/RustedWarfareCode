View createViewForLevel(String p1) {
    k1104 k1104Instance = k1104.t();

    LinearLayout outerLayout = new LinearLayout(getBaseContext());
    outerLayout.setGravity(17);

    LinearLayout innerLayout = new LinearLayout(getBaseContext());
    innerLayout.setOrientation(1);
    innerLayout.setGravity(17);
    innerLayout.setBackgroundColor(Color.argb(0x32, 0, 0, 0));
    innerLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
    innerLayout.setPadding(2, 4, 2, 2);
    innerLayout.setMinimumHeight(k1104Instance.a(170.0f));

    Button button = new Button(getBaseContext(), (AttributeSet) null, R.style.LevelButton);

    String mapPath = new StringBuilder().append(this.currentMapPath).append(p1).toString();
    InputStream inputStream = d84.c(mapPath);

    Drawable drawable = null;
    if (inputStream != null) {
        drawable = Drawable.createFromStream(inputStream, (String) null);
        try {
            inputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    Drawable levelDrawable = null;
    if (drawable != null && drawable instanceof BitmapDrawable) {
        BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
        Bitmap bitmap = bitmapDrawable.getBitmap();
        if (bitmap != null) {
            if (bitmap.getWidth() > 500 || bitmap.getHeight() > 500) {
                String logMsg = new StringBuilder("Map thumbnail is too large. Size:(")
                        .append(bitmap.getWidth())
                        .append(",")
                        .append(bitmap.getHeight())
                        .append(") (max:500 pixels)")
                        .toString();
                k1104.d(logMsg);

                if (LevelSelectActivity.toolargethumb == null) {
                    LevelSelectActivity.toolargethumb = k1104.t().bL.a(R.drawable.error_toolargethumb);
                }
                levelDrawable = new BitmapDrawable(getResources(), LevelSelectActivity.toolargethumb.b());
            } else {
                levelDrawable = drawable;
            }
        } else {
            levelDrawable = drawable;
        }
    } else {
        levelDrawable = drawable;
    }

    if (levelDrawable == null && this.custom) {
        if (LevelSelectActivity.missingMapThumb == null) {
            LevelSelectActivity.missingMapThumb = k1104.t().bL.a(R.drawable.error_missingmap);
        }
        levelDrawable = new BitmapDrawable(getResources(), LevelSelectActivity.missingMapThumb.b());
    }

    if (levelDrawable != null) {
        DynamicImageView imageView = new DynamicImageView(getBaseContext());
        imageView.setId(R.id1367.reservedNamedId2);
        imageView.setMaxFixedHeight(k1104Instance.a(150.0f));
        imageView.setImageDrawable(levelDrawable);
        imageView.setPadding(3, 1, 3, 1);
        innerLayout.addView(imageView);

        LinearLayout.LayoutParams imageParams = new LinearLayout.LayoutParams(imageView.getLayoutParams());
        imageParams.width = -1;
        imageView.setLayoutParams(imageParams);
    }

    button.setId(R.id1367.reservedNamedId1);
    button.setTypeface(Typeface.DEFAULT_BOLD);
    button.setPadding(3, 5, 3, 5);
    button.setTextSize(18.0f);
    button.setTextColor(-1);
    button.setShadowLayer(1.0f, 1.0f, 1.0f, Color.argb(0x7f, 0, 0, 0));
    button.setGravity(17);
    button.setBackgroundDrawable((Drawable) null);
    innerLayout.addView(button);

    setupViewForLevel(innerLayout, p1);

    outerLayout.addView(innerLayout);

    return outerLayout;
}
