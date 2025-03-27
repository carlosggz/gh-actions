#!/bin/bash

function get_version() {
  local version=$(cat ./build.gradle | grep "version = '" | awk '{print $3}' | cut -d "'" -f 2)
  echo "$version"
}

function increment_version() {
  local version=$1
  local parts=( ${version//./ } )

  if [ "${parts[1]}" -lt "99" ]; then
    ((parts[1]++)) #Minor
  else
    ((parts[0]++)) #Minor
    parts[1]=1
  fi

  parts[2]=0

  echo "${parts[0]}.${parts[1]}.${parts[2]}"
}
