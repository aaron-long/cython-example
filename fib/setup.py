import setuptools
from distutils.core import setup
from Cython.Build import cythonize

setup(name='Fib',
      ext_modules=cythonize("Fib.pyx", annotate=True),
      requires=['Cython'])
