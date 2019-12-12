# These changes result in a ~4x speedup
def f(double x):
    return x ** 2 - x


def integrate_f(double a, double b, int n):
    cdef int i
    cdef double s, dx
    s = 0
    dx = (b - a) / n
    for i in range(n):
        s += f(a + i * dx)
    return s * dx
