#!/bin/sh
# A script to install Hama.bundle plug-ing with Absolute-Series-Scanner
# Hama.bundle: https://github.com/ZeroQI/Hama.bundle
# ASS: https://github.com/ZeroQI/Absolute-Series-Scanner

# Requires plex already be insalled and git.

service plexmediaserver stop
cd '/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Plug-ins'
git clone https://github.com/ZeroQI/Hama.bundle.git
chown -R plex:plex '/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Plug-ins/Hama.bundle'
chmod 775 -R '/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Plug-ins/Hama.bundle'

mkdir -p '/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Scanners/Series'
wget -O '/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Scanners/Series/Absolute Series Scanner.py' https://raw.githubu>
chown -R plex:plex '/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Scanners'
chmod 775 -R '/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Scanners'
service plexmediaserver restart
