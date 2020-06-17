#!/bin/sh -e
#
# update-certdata.sh

[ -w "$KISS_ROOT/etc/certificates" ] || {
    printf '%s\n' "${0##*/}: root required to update CA certificates." >&2
    exit 1
}

wget https://curl.haxx.se/ca/cacert.pem -O "$KISS_ROOT/etc/certificates/cert.pem"
printf '%s\n' "${0##*/}: updated cert.pem"
