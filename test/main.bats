#!/usr/bin/env bats

@test "main - A help is provided without error when requested" {
  run bash ./main.sh --help
  [ "$status" -eq 0 ]
  grep -qE '^usage:' <<<"$output"
}

@test "main - Sourcing the main script can be done without error" {
  source ./main.sh
}
