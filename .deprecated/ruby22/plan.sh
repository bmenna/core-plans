pkg_name=ruby22
pkg_origin=core
pkg_version=2.2.10
pkg_description="A dynamic, open source programming language with a focus on \
  simplicity and productivity. It has an elegant syntax that is natural to \
  read and easy to write."
pkg_license=("Ruby")
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_source=https://cache.ruby-lang.org/pub/ruby/ruby-${pkg_version}.tar.gz
pkg_upstream_url=https://www.ruby-lang.org/en/
pkg_shasum=cd51019eb9d9c786d6cb178c37f6812d8a41d6914a1edaf0050c051c75d7c358
pkg_dirname="ruby-$pkg_version"
pkg_deps=(core/glibc/2.22 core/ncurses/6.0 core/zlib/1.2.8 core/openssl/1.0.2l core/libyaml/0.1.6/20170514013335 core/libffi/3.2.1/20170514003538 core/readline/6.3.8)
pkg_build_deps=(core/coreutils core/diffutils core/patch core/make core/gcc/5.2.0 core/sed)
pkg_lib_dirs=(lib)
pkg_include_dirs=(include)
pkg_bin_dirs=(bin)
pkg_interpreters=(bin/ruby)

do_prepare() {
  export CFLAGS="${CFLAGS} -O3 -g -pipe"
  build_line "Setting CFLAGS='$CFLAGS'"
}

do_build() {
  ./configure \
    --prefix="$pkg_prefix" \
    --enable-shared \
    --disable-install-doc \
    --with-openssl-dir="$(pkg_path_for core/openssl)" \
    --with-libyaml-dir="$(pkg_path_for core/libyaml)"

  make
}

do_check() {
  make test
}

do_install() {
  do_default_install
  gem update --system 2.7.9 --no-document
  gem install rb-readline --no-document
}

