package com.corrodinggames.rts.gameFramework.utility;

import com.corrodinggames.rts.gameFramework.ah801;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

final class w1358 implements Iterator {
    final v1357 a;
    private int b;
    private int c;
    private int d;

    private w1358(v1357 list) {
        this.a = list;
        this.b = list.b;
        this.c = -1;
        this.d = v1357.a(list);
    }

    w1358(v1357 list, byte unused) {
        this(list);
    }

    @Override
    public final Object next() {
        int remaining = this.b;
        if (v1357.b(this.a) != this.d) {
            throw new ConcurrentModificationException(
                    "on:" + this.a.d + " (modCount:" + v1357.c(this.a)
                            + " expectedModCount:" + this.d + ")");
        } else if (remaining == 0) {
            throw new NoSuchElementException();
        } else {
            this.b = remaining - 1;
            ah801[] arr = this.a.c;
            int index = this.a.b - remaining;
            this.c = index;
            return arr[index];
        }
    }

    @Override
    public final boolean hasNext() {
        return this.b != 0;
    }

    @Override
    public final void remove() {
        ah801[] arr = this.a.c;
        int index = this.c;
        if (v1357.d(this.a) != this.d) {
            throw new ConcurrentModificationException(
                    "on:" + this.a.d + " (modCount:" + v1357.e(this.a)
                            + " expectedModCount:" + this.d + ")");
        } else if (index < 0) {
            throw new IllegalStateException();
        } else {
            System.arraycopy(arr, index + 1, arr, index, this.b);
            v1357 list = this.a;
            int newSize = list.b - 1;
            list.b = newSize;
            arr[newSize] = null;
            this.c = -1;
            this.d = v1357.f(this.a);
        }
    }
}
