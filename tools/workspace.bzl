# If ms is linked as a submodule, path_prefix is ms's directory
# within the workspace (e.g. "ms/"), and ms_repo_name 
#(e.g. "ms = ms") is the name of the local_repository rule (e.g. "@ms").

def ngpaas_workspace(path_prefix = "", ngpaas_repo_name = ""):
#

  native.new_http_archive(
    name = "zlib",
    url = "http://zlib.net/zlib-1.2.11.tar.gz",
    sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
    strip_prefix = "zlib-1.2.11",
    build_file = "archives/zlib.BUILD",
  )

  native.new_http_archive(
    name = "cdf",
    url = "https://spdf.sci.gsfc.nasa.gov/pub/software/cdf/dist/cdf36_3_1/linux/cdf36_3_1-dist-cdf.tar.gz",
    sha256 = "e44c9d46a27e29ba35c73ab550b151fdd4665aae62da3293d85072cda27725d8",
    build_file = "cdf.BUILD",
    strip_prefix = "archives/cdf36_3-dist",
  )

  native.new_http_archive(
    name = "hdf5",
    url = "http://www.hdfgroup.org/ftp/HDF5/current/src/hdf5-1.10.0-patch1.tar.gz",
    sha256 = "6e78cfe32a10e6e0629393cdfddf6cfa536571efdaf85f08e35326e1b4e9eff0",
    strip_prefix = "hdf5-1.10.0-patch1",
    build_file = "archives/hdf5.BUILD",
  )

  native.new_git_repository(
    name = "netcdf",
    remote = "https://github.com/Unidata/netcdf-c.git",
    commit = "98f5de4bf7fdafc03826d0d79fb2546bd3c7fccc",
    build_file = "archives/netcdf.BUILD",
)

  native.new_http_archive(
    name = "netcdfcxx",
    url = "https://www.unidata.ucar.edu/downloads/netcdf/ftp/netcdf-cxx4-4.2.tar.gz",
    sha256 = "310b56ca9220ec709d2ebe6fcf46567fda5b26a20b7afa9744acbbc5a59b2226",
    strip_prefix = "netcdf-cxx4-4.2",
    build_file = "archives/netcdfcxx.BUILD",
)    

  native.new_git_repository(
    name = "eigen3_hdf5",
    remote = "https://github.com/garrison/eigen3-hdf5.git",
    commit = "2c782414251e75a2de9b0441c349f5f18fe929a2",
    build_file = "archives/eigen3-hdf5.BUILD",
)

  native.new_git_repository(
    name = "blosc",
    remote = "https://github.com/Blosc/c-blosc",
    commit = "f51ea6b7cd32d87aa234aa426d53283132498ef8",
    build_file = "archives/blosc.BUILD",
  )

  native.new_http_archive(
    name = "gtest",
    url = "https://github.com/google/googletest/archive/master.zip",
    sha256 = "06e106e05b34eec6822e9ab069fdb5c09f6566ac52e390b72e5668ab91a20ff6",
    strip_prefix = "googletest-master/googletest",
    build_file = "archives/gtest.BUILD",
  )

  native.new_http_archive(
    name = "zmq",
    url = "https://github.com/zeromq/libzmq/archive/master.zip",
    sha256 = "0e14d41fd9e67fbad0b6cba35283be1dfb25076deba381766c7e13d83e51547c",
    strip_prefix = "libzmq-master",
    build_file = "archives/zmq.BUILD",
  )

  native.new_git_repository(
    name = "protobuf",
    remote = "https://github.com/google/protobuf.git",
	  commit = "a9ab38c17178fcedd9b46c09fa33f94d1a6335c3",
    build_file = "archives/protobuf.BUILD",
  )

  native.new_git_repository(
    name = "flatbuffer",
    remote = "https://github.com/google/flatbuffers.git",
	  commit = "ebcfbbadf0c18c6b59ab0b50473eacc8e3c38c5f",
    build_file = "archives/flatbuffer.BUILD",
  )

  native.new_git_repository(
    name = "nanopb",
    remote = "https://github.com/nanopb/nanopb.git",
	  commit = "ca74746e23b5a9e7916e8fde6632d71d61603f50",
    build_file = "archives/nanopb.BUILD",
  )

  native.new_http_archive(
    name = "eigen",
    url = "http://bitbucket.org/eigen/eigen/get/3.3.2.zip",
    sha256 = "3bc49c581dc335eeffea570572443be66891135e02316f7bedf86d762e408761",
    strip_prefix = "eigen-eigen-da9b4e14c255",
    build_file = "archives/eigen.BUILD",
  )

  native.new_git_repository(
    name = "capnp",
    remote = "https://github.com/sandstorm-io/capnproto.git",
    tag = "v0.5.3",
    build_file = "archives/capnp.BUILD",
  )

  native.new_http_archive(
    name = "redis",
    url = "https://github.com/antirez/redis/archive/unstable.zip",
    sha256 = "457f0a6464944202d919409d4fa0bbb13f614c97a8ef8f1e76cca4d137db417f",
    strip_prefix = "redis-unstable",
    build_file = "archives/redis.BUILD",
  )
