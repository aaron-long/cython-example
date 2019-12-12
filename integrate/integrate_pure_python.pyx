# Compiled with Cython this returns a ~35% speedup
def f(x):
    return x ** 2 - x


def integrate_f(a, b, n):
    s = 0
    dx = (b - a) / n
    for i in range(n):
        s += f(a + i * dx)
    return s * dx
