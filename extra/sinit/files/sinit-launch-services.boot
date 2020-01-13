# we are going to start runit and getty here

sinit_run_getty() {
	for getty in 1 2 3 4 5 6; do
		ubase-box respawn /sbin/getty 38400 tty${getty} 2>&1 &
	done
}

sinit_runit() {
	ubase-box respawn /usr/bin/runsvdir -P /var/service &
}

[ "$SINIT_ENABLE_GETTY" = 1 ] && sinit_run_getty
[ "$SINIT_ENABLE_RUNIT" = 1 ] && sinit_runit
