TEST_PKG_VERSION="$(echo "${TEST_PKG_IDENT}" | cut -d/ -f3)"

@test "Version matches" {
  result="$(hab pkg exec "${TEST_PKG_IDENT}" journalbeat version | awk '{print $3}')"
  [ "$result" = "${TEST_PKG_VERSION}" ]
}

@test "Help command" {
  run hab pkg exec "${TEST_PKG_IDENT}" journalbeat --help
  [ $status -eq 0 ]
}

@test "Service is running" {
  [ "$(hab svc status | grep "journalbeat\.default" | awk '{print $4}' | grep up)" ]
}

@test "A single process" {
  result="$(ps aux | grep -v grep | grep -v "test" | grep journalbeat | wc -l)"
  [ "${result}" -eq 1 ]
}
