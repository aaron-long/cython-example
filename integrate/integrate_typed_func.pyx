# These changes result in a ~4x speedup
cdef double f(double x) except *:
    return x ** 2 - x


def integrate_f(double a, double b, int n):
    cdef int i
    cdef double s, dx
    s = 0
    dx = (b - a) / n
    for i in range(n):
        s += f(a + i * dx)
    return s * dx
