#!/bin/sh
# A script to update Hama.bundle plug-in and Absolute-Series-Scanner
# Hama.bundle: https://github.com/ZeroQI/Hama.bundle
# ASS: https://github.com/ZeroQI/Absolute-Series-Scanner

# Requires plex already be insalled with Hama.bundle plug-in and git.

service plexmediaserver stop
cd '/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Plug-ins/Hama.bundle'
git reset && git pull
chown -R plex:plex '/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Plug-ins/Hama.bundle'
chmod 775 -R '/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Plug-ins/Hama.bundle'

wget -O '/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Scanners/Series/Absolute Series Scanner.py' https://raw.githubu>
chown -R plex:plex '/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Scanners'
chmod 775 -R '/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Scanners'
service plexmediaserver restart
