package com.corrodinggames.rts.gameFramework.utility;

import com.corrodinggames.rts.gameFramework.ah801;

import java.io.Serializable;
import java.util.*;

public final class v1357 extends AbstractList<ah801>
        implements Serializable, Cloneable, RandomAccess {

    public static final ah801[] a = new ah801[0];

    int b;
    public transient ah801[] c;
    String d;

    public v1357(String name) {
        this.c = a;
        this.d = name;
    }

    private static int a(int size) {
        return (size < 6 ? 12 : size >> 1) + size;
    }

    private static IndexOutOfBoundsException a(int index, int size) {
        return new IndexOutOfBoundsException("Invalid index " + index + ", size is " + size);
    }

    /* synthetic modCount accessors used by w1358 */
    static int a(v1357 list) { return list.modCount; }
    static int b(v1357 list) { return list.modCount; }
    static int c(v1357 list) { return list.modCount; }
    static int d(v1357 list) { return list.modCount; }
    static int e(v1357 list) { return list.modCount; }
    static int f(v1357 list) { return ++list.modCount; }

    public final void a() {
        if (b != 0) {
            b = 0;
            modCount++;
        }
    }

    /** 对应 smali 的 public final a(ah801)Z —— i345 里 this.W.a(v2) 调用的就是它 */
    public final boolean a(ah801 element) {
        ah801[] arr = c;
        int size = b;
        if (size == arr.length) {
            ah801[] newArr = new ah801[(size < 6 ? 12 : size >> 1) + size];
            System.arraycopy(arr, 0, newArr, 0, size);
            c = arr = newArr;
        }
        arr[size] = element;
        b = size + 1;
        modCount++;
        return true;
    }

    @Override
    public final void add(int index, ah801 element) {
        ah801[] arr = c;
        int size = b;
        if (index > size || index < 0) {
            throw a(index, size);
        }
        if (size < arr.length) {
            System.arraycopy(arr, index, arr, index + 1, size - index);
        } else {
            ah801[] newArr = new ah801[a(size)];
            System.arraycopy(arr, 0, newArr, 0, index);
            System.arraycopy(arr, index, newArr, index + 1, size - index);
            c = arr = newArr;
        }
        arr[index] = element;
        b = size + 1;
        modCount++;
    }

    @Override
    public final boolean add(ah801 element) {
        return a(element);
    }

    @Override
    public final boolean addAll(int index, Collection<? extends ah801> coll) {
        int size = b;
        if (index > size || index < 0) {
            throw a(index, size);
        }
        Object[] incoming = coll.toArray();
        int n = incoming.length;
        if (n == 0) {
            return false;
        }
        ah801[] arr = c;
        int newSize = size + n;
        if (newSize <= arr.length) {
            System.arraycopy(arr, index, arr, index + n, size - index);
        } else {
            ah801[] newArr = new ah801[a(newSize - 1)];
            System.arraycopy(arr, 0, newArr, 0, index);
            System.arraycopy(arr, index, newArr, index + n, size - index);
            c = arr = newArr;
        }
        System.arraycopy(incoming, 0, arr, index, n);
        b = newSize;
        modCount++;
        return true;
    }

    @Override
    public final boolean addAll(Collection<? extends ah801> coll) {
        Object[] incoming = coll.toArray();
        int n = incoming.length;
        if (n == 0) {
            return false;
        }
        ah801[] arr = c;
        int size = b;
        int newSize = size + n;
        if (newSize > arr.length) {
            ah801[] newArr = new ah801[a(newSize - 1)];
            System.arraycopy(arr, 0, newArr, 0, size);
            c = arr = newArr;
        }
        System.arraycopy(incoming, 0, arr, size, n);
        b = newSize;
        modCount++;
        return true;
    }

    @Override
    public final void clear() {
        if (b != 0) {
            Arrays.fill(c, 0, b, null);
            b = 0;
            modCount++;
        }
    }

    @Override
    public final Object clone() {
        try {
            v1357 copy = (v1357) super.clone();
            copy.c = c.clone();
            return copy;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    @Override
    public final boolean contains(Object o) {
        ah801[] arr = c;
        int size = b;
        if (o != null) {
            for (int i = 0; i < size; i++) {
                if (o.equals(arr[i])) return true;
            }
        } else {
            for (int i = 0; i < size; i++) {
                if (arr[i] == null) return true;
            }
        }
        return false;
    }

    @Override
    public final boolean equals(Object o) {
        if (o == this) return true;
        if (!(o instanceof List)) return false;
        List<?> list = (List<?>) o;
        int size = b;
        if (list.size() != size) return false;
        ah801[] arr = c;
        if (list instanceof RandomAccess) {
            for (int i = 0; i < size; i++) {
                ah801 e = arr[i];
                Object other = list.get(i);
                if (e == null ? other != null : !e.equals(other)) return false;
            }
        } else {
            Iterator<?> it = list.iterator();
            for (int i = 0; i < size; i++) {
                ah801 e = arr[i];
                Object other = it.next();
                if (e == null ? other != null : !e.equals(other)) return false;
            }
        }
        return true;
    }

    @Override
    public final ah801 get(int index) {
        if (index >= b) {
            throw a(index, b);
        }
        return c[index];
    }

    @Override
    public final int hashCode() {
        ah801[] arr = c;
        int size = b;
        int hash = 1;
        for (int i = 0; i < size; i++) {
            ah801 e = arr[i];
            hash = hash * 31 + (e == null ? 0 : e.hashCode());
        }
        return hash;
    }

    @Override
    public final int indexOf(Object o) {
        ah801[] arr = c;
        int size = b;
        if (o != null) {
            for (int i = 0; i < size; i++) {
                if (o.equals(arr[i])) return i;
            }
        } else {
            for (int i = 0; i < size; i++) {
                if (arr[i] == null) return i;
            }
        }
        return -1;
    }

    @Override
    public final boolean isEmpty() {
        return b == 0;
    }

    @Override
    public final Iterator<ah801> iterator() {
        return new w1358(this, (byte) 0);
    }

    @Override
    public final int lastIndexOf(Object o) {
        ah801[] arr = c;
        if (o != null) {
            for (int i = b - 1; i >= 0; i--) {
                if (o.equals(arr[i])) return i;
            }
        } else {
            for (int i = b - 1; i >= 0; i--) {
                if (arr[i] == null) return i;
            }
        }
        return -1;
    }

    @Override
    public final ah801 remove(int index) {
        ah801[] arr = c;
        int size = b;
        if (index >= size) {
            throw a(index, size);
        }
        ah801 old = arr[index];
        size--;
        System.arraycopy(arr, index + 1, arr, index, size - index);
        arr[size] = null;
        b = size;
        modCount++;
        return old;
    }

    @Override
    public final boolean remove(Object o) {
        ah801[] arr = c;
        int size = b;
        if (o != null) {
            for (int i = 0; i < size; i++) {
                if (o.equals(arr[i])) {
                    size--;
                    System.arraycopy(arr, i + 1, arr, i, size - i);
                    arr[size] = null;
                    b = size;
                    modCount++;
                    return true;
                }
            }
        } else {
            for (int i = 0; i < size; i++) {
                if (arr[i] == null) {
                    size--;
                    System.arraycopy(arr, i + 1, arr, i, size - i);
                    arr[size] = null;
                    b = size;
                    modCount++;
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    protected final void removeRange(int fromIndex, int toIndex) {
        if (fromIndex == toIndex) return;
        ah801[] arr = c;
        int size = b;
        if (fromIndex >= size) {
            throw new IndexOutOfBoundsException("fromIndex " + fromIndex + " >= size " + b);
        }
        if (toIndex > size) {
            throw new IndexOutOfBoundsException("toIndex " + toIndex + " > size " + b);
        }
        if (fromIndex > toIndex) {
            throw new IndexOutOfBoundsException("fromIndex " + fromIndex + " > toIndex " + toIndex);
        }
        System.arraycopy(arr, toIndex, arr, fromIndex, size - toIndex);
        int removed = toIndex - fromIndex;
        int newSize = size - removed;
        Arrays.fill(arr, newSize, size, null);
        b = newSize;
        modCount++;
    }

    @Override
    public final ah801 set(int index, ah801 element) {
        ah801[] arr = c;
        if (index >= b) {
            throw a(index, b);
        }
        ah801 old = arr[index];
        arr[index] = element;
        return old;
    }

    @Override
    public final int size() {
        return b;
    }

    @Override
    public final Object[] toArray() {
        int size = b;
        Object[] out = new Object[size];
        System.arraycopy(c, 0, out, 0, size);
        return out;
    }

    @Override
    @SuppressWarnings("unchecked")
    public final <T> T[] toArray(T[] out) {
        int size = b;
        if (out.length < size) {
            out = (T[]) java.lang.reflect.Array.newInstance(
                    out.getClass().getComponentType(), size);
        }
        System.arraycopy(c, 0, out, 0, size);
        if (out.length > size) {
            out[size] = null;
        }
        return out;
    }
}
