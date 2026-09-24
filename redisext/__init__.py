from importlib.metadata import PackageNotFoundError, version

try:
    __version__ = version("redisext")
except PackageNotFoundError:
    __version__ = "2.0.2"
