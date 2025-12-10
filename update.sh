#!/bin/bash

sha256sum ../../secret >> secret.sha256
sha256sum ../../secret >> secrets.kdbx.sha256

cat ../../secret | base64 > secret.b64
cat ../../secrets.kdbx | base64 > secrets.kdbx.b64

git add . && git commit -a && git push


