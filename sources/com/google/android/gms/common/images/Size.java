package com.google.android.gms.common.images;

/* JADX INFO: loaded from: classes.dex */
public final class Size {
    private final int zznQ;
    private final int zznR;

    public Size(int width, int height) {
        this.zznQ = width;
        this.zznR = height;
    }

    public static Size parseSize(String string) throws NumberFormatException {
        if (string == null) {
            throw new IllegalArgumentException("string must not be null");
        }
        int iIndexOf = string.indexOf(42);
        if (iIndexOf < 0) {
            iIndexOf = string.indexOf(120);
        }
        if (iIndexOf < 0) {
            throw zzch(string);
        }
        try {
            return new Size(Integer.parseInt(string.substring(0, iIndexOf)), Integer.parseInt(string.substring(iIndexOf + 1)));
        } catch (NumberFormatException e) {
            throw zzch(string);
        }
    }

    private static NumberFormatException zzch(String str) {
        throw new NumberFormatException("Invalid Size: \"" + str + "\"");
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Size)) {
            return false;
        }
        Size size = (Size) obj;
        return this.zznQ == size.zznQ && this.zznR == size.zznR;
    }

    public int getHeight() {
        return this.zznR;
    }

    public int getWidth() {
        return this.zznQ;
    }

    public int hashCode() {
        return this.zznR ^ ((this.zznQ << 16) | (this.zznQ >>> 16));
    }

    public String toString() {
        return this.zznQ + "x" + this.zznR;
    }
}
