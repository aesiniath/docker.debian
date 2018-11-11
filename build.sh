docker run --rm=true docker.io/library/debian:stretch date -r /var/lib/apt/lists -u +%FT%TZ > .base
if [ .base -nt .stamp ] ; then
	date -u +%FT%TZ > .stamp
fi

docker build \
	--tag=localhost/afcowie/debian:stretch \
	--network=proxy \
	.
