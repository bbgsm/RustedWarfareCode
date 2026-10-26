package com.corrodinggames.rts.gameFramework.utility;

import java.util.regex.Pattern;

class ae1325 {
    static Pattern i;
    static Pattern j;
    static Pattern k;

    static {
        i = Pattern.compile("\\p{C}");
        j = Pattern.compile("\\s*\\[([^]]*)\\]\\s*");
        k = Pattern.compile("\\s*([^=:]*)(?:=|:)(.*)");
    }
}
