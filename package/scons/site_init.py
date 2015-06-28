"""
Decorate SCons Environment constructor so that the "GCC_SYSROOT"
variable is always included.
"""

from functools import wraps
import SCons.Environment

def add_gcc_sysroot(environment_init):
    @wraps(environment_init)
    def wrapper(self, *args, **kwargs):
        environment_init(self, *args, **kwargs)

        self.PrependENVPath('GCC_SYSROOT', os.environ['GCC_SYSROOT'])

    return wrapper

SCons.Environment.Environment.__init__ = \
    add_gcc_sysroot(SCons.Environment.Environment.__init__)
