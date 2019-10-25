source "$(dirname "${BASH_SOURCE[0]}")/../haproxy19/plan.sh"

pkg_name=haproxy18
pkg_origin=core
pkg_description="The Reliable, High Performance TCP/HTTP Load Balancer"
pkg_distname=haproxy
pkg_version=1.8.14
pkg_maintainer='The Habitat Maintainers <humans@habitat.sh>'
pkg_license=('GPL-2.0' 'LGPL-2.1')
pkg_source="https://www.haproxy.org/download/1.8/src/${pkg_distname}-${pkg_version}.tar.gz"
pkg_shasum=b17e402578be85e58af7a3eac99b1f675953bea9f67af2e964cf8bdbd1bd3fdf
pkg_dirname="${pkg_distname}-${pkg_version}"
pkg_upstream_url="https://www.haproxy.org/"
pkg_build_deps=(
  core/coreutils
  core/gcc
  core/pcre
  core/make
  core/openssl
  core/zlib
)
