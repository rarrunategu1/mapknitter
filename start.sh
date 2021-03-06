#!/bin/bash -l

pidfile=/app/tmp/pids/server.pid

bundle check || bundle install
yarn check || yarn install

if [ -f $pidfile ] ; then
	>&2 echo 'Server PID file already exists. Removing it...';
	rm $pidfile;
fi

#bundle exec /usr/local/bundle/bin/passenger start
bundle exec passenger start
