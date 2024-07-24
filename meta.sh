#!/bin/sh

if [ $# -ne 1 ]
then
  echo "usage: input.flac" 1>&2
  exit 1
fi

FILE="$1"
shift

exec metaflac \
  --remove-all-tags \
  --import-tags-from=meta.txt \
  "${FILE}"

