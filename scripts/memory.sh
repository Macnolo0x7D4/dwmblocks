#!/bin/sh

free --mebi | sed -n '2{p;q}' | awk '{printf ("🧠 %2.1fGiB/%2.1fGiB\n", ( $3 / 1024), ($2 / 1024))}'
