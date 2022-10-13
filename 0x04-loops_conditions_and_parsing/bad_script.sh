#!/usr/bin/env bash
# foo generates a warning, even though it has five indirect references
foo=42
name=foo
echo "${!name} $((name))"
export "$name"; eval "echo $name"
declare -n name; echo "$name"
