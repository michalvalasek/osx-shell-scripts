#!/bin/sh

# Quick way to rebuild the Launch Services database and get rid
# of duplicates in the Open With submenu.
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user