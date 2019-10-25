# shellcheck disable=SC2148,SC1091
PLANDIR=$(dirname "${BASH_SOURCE[0]}")
source "${PLANDIR}/../postgresql/plan.sh"

pkg_name=postgresql94
pkg_version=9.4.18
pkg_origin=core
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_description="PostgreSQL is a powerful, open source object-relational database system."
pkg_upstream_url="https://www.postgresql.org/"
pkg_license=('PostgreSQL')
pkg_source="https://ftp.postgresql.org/pub/source/v${pkg_version}/postgresql-${pkg_version}.tar.bz2"
pkg_shasum="428337f2b2f5e3ea21b8a44f88eb89c99a07a324559b99aebe777c9abdf4c4c0"
pkg_dirname="postgresql-${pkg_version}"
