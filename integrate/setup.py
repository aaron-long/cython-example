import setuptools
from distutils.core import setup
from Cython.Build import cythonize

setup(name='integrate',
      ext_modules=cythonize("integrate.pyx", annotate=True),
      requires=['Cython'])
