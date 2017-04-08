from setuptools import setup


setup(name='pytorch_stn',
      author='',
      version='0.1',
      packages=['torch_stn',
                'torch_stn._ext',
                'torch_stn._ext.my_lib',
                'torch_stn.functions',
                'torch_stn.modules'],
      package_data={'torch_stn._ext.my_lib': ['*.so']},
      zip_safe=False)
