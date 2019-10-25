pkg_name=storm
pkg_origin=core
pkg_version=1.2.3
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_description="Open source distributed realtime computation system."
pkg_upstream_url="http://storm.apache.org/index.html"
pkg_license=("Apache-2.0")
pkg_source="http://apache.mediamirrors.org/storm/apache-storm-${pkg_version}/apache-storm-${pkg_version}.tar.gz"
pkg_shasum="d45322253db06353a521284f31b30bd964dab859f3a279a305bd79112803425a"
pkg_deps=(
  core/corretto8
  core/python
  core/bash
)
pkg_bin_dirs=(bin)
pkg_lib_dirs=(lib)
pkg_dirname=apache-storm-${pkg_version}
pkg_binds=(
	[zookeeper]=""
	[storm]=""
)

pkg_exports=()
pkg_exposes=()

do_build() {
  return 0
}

do_install() {

  install -vDm644 README.markdown "$pkg_prefix/README.md"
  install -vDm644 LICENSE "$pkg_prefix/LICENSE.txt"
  install -vDm644 NOTICE "$pkg_prefix/NOTICE.txt"

  cp -a bin lib log4j2 public "$pkg_prefix"
}
