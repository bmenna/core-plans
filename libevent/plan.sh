pkg_origin=core
pkg_name=libevent
pkg_version=2.0.22
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=('BSD-3-Clause')
pkg_source=https://github.com/${pkg_name}/${pkg_name}/releases/download/release-${pkg_version}-stable/${pkg_name}-${pkg_version}-stable.tar.gz
pkg_upstream_url=https://libevent.org
pkg_description="The libevent API provides a mechanism to execute a callback function when a specific event occurs \
  on a file descriptor or after a timeout has been reached. Furthermore, libevent also support callbacks due to \
  signals or regular timeouts."
pkg_shasum=71c2c49f0adadacfdbe6332a372c38cf9c8b7895bb73dabeaa53cdcc1d4e1fa3
pkg_dirname=${pkg_name}-${pkg_version}-stable
pkg_deps=(core/glibc)
pkg_build_deps=(core/cacerts core/gcc core/make)
pkg_bin_dirs=(bin)
pkg_include_dirs=(include)
pkg_lib_dirs=(lib)
