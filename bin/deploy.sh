#!/bin/sh

echo "Deploying to: $DEPLOY_REMOTE"

cd target/mvn-repo/
rsync --checksum \
    --ignore-times \
    --human-readable \
    --progress \
    --itemize-changes \
    --archive \
    --recursive \
    --update \
    --verbose \
    --executability \
    --delay-updates \
    --compress --skip-compress=gz/zip/z/rpm/deb/iso/bz2/t[gb]z/7z/mp[34]/mov/avi/ogg/jpg/jpeg/png/gif \
    ./ \
    $DEPLOY_REMOTE