#!/bin/bash
case $1 in
-k) keep="keep"; shift;;
*)  keep="";;
esac
set -o pipefail
# yes | crpkg install buildessential $keep
arch=`uname -m`
for i in "$@"; do
    version=`grep '\<version ['"'"'"]' /usr/local/lib/crpkg/packages/$i.rb | head -1 | sed -e 's/^.*version *['"'"'"]//' -e 's/['"'"'"].*$//'`
    yes | crpkg build $i $keep 2>&1 | tee "$i-$version-chromeos-$arch.log"
    case .$? in
    .141) ;;        # ignore SIGPIPE
    *)    exit 1;;  # abort at errors
    esac
done
