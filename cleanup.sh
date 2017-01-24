#!/bin/bash

find . -type d -name doc | xargs rm -Rf -v
cd libs
find . -type d -name test | xargs rm -Rf -v
find . -type d -name example | xargs rm -Rf -v
find . -type d -name examples | xargs rm -Rf -v
find . -type d -name tools | xargs rm -Rf -v
find . -type d -name build | xargs rm -Rf -v
find . -type d -name tutorial | xargs rm -Rf -v
find . -type d -name proj | xargs rm -Rf -v
find . -type d -name perf | xargs rm -Rf -v
find . -type d -name vc7ide | xargs rm -Rf -v
find . -type d -name util | xargs rm -Rf -v
find . -type d -name performance | xargs rm -Rf -v
find . -type d -name book | xargs rm -Rf -v
find . -type d -name preprocessed | xargs rm -Rf -v
find . -type d -name meta | xargs rm -Rf -v
cd -

find . -name '*.md' | xargs rm -Rf -v
find . -name '*.html' | xargs rm -Rf -v
find . -name '*.css' | xargs rm -Rf -v
find . -name '*.htm' | xargs rm -Rf -v
find . -name '*.gif' | xargs rm -Rf -v
find . -name '*.txt' | xargs rm -Rf -v
find . -name '*.jpg' | xargs rm -Rf -v
find . -name '*.png' | xargs rm -Rf -v
find . -name '*.zip' | xargs rm -Rf -v
find . -name '*.py' | xargs rm -Rf -v
find . -name sublibs | xargs rm -Rf -v
find . -name Jamroot | xargs rm -Rf -v
find . -name dummy | xargs rm -Rf -v

find . -type d -empty | xargs rm -Rf -v
