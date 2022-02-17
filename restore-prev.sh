#!/bin/bash
# restore previous jar file and seednodes
# v2 of this script by Joey Stanford <joey@stan4d.net>
# as part of Freenet/Entropy Controller
mv freenet.jar freenet.jar.NEW-BAD
mv freenet.jar.old freenet.jar
mv seednodes.ref seednodes.ref.NEW-BAD
mv seednodes.ref.old seednodes.ref
