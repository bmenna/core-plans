pkg_name=libassuan
pkg_origin=core
pkg_version=2.4.2
pkg_license=('LGPL-2.0-or-later')
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_source="ftp://ftp.gnupg.org/gcrypt/${pkg_name}/${pkg_name}-${pkg_version}.tar.bz2"
pkg_description="Libassuan is a small library implementing the so-called Assuan protocol. "
pkg_upstream_url=https://www.gnupg.org/software/libassuan/index.html
pkg_shasum=bb06dc81380b74bf1b64d5849be5c0409a336f3b4c45f20ac688e86d1b5bcb20
pkg_deps=(core/glibc core/libgpg-error)
pkg_build_deps=(core/gcc core/coreutils core/sed core/bison core/flex core/grep core/bash core/gawk core/libtool core/diffutils core/findutils core/xz core/gettext core/gzip core/make core/patch core/texinfo core/util-linux)
pkg_bin_dirs=(bin)
pkg_include_dirs=(include)
pkg_lib_dirs=(lib)

do_build() {
  ./configure \
    --prefix="$pkg_prefix" \
    --with-libgpg-error-prefix="$(pkg_path_for libgpg-error)" \
    --enable-static \
    --enable-shared
  make
}

do_check() {
  make check
}

do_strip() {
  return 0
}
