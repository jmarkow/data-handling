# Welcome (i.e. what does this do?)

This is a set of bash scripts for handling data.

===

# Table of Contents

1. [filecopy_daemon.sh](#filecopy_daemon.sh)


### filecopy_daemon.sh

This script is used to shuttle data from one directory to another.  It waits until a file has not been modified for 5 minutes.  To use this simply set the following environment variables in Bash:

| Variable | Description | Format |
|----------|-------------|--------|
| DATAH_SRC | Source of files to copy | string, full path |
| DATAH_DEST | Destination for files | string, full path |
| DATAH_INTERVAL | Period to wait (minutes) before scanning for files again | integer |
| DATAH_FILETYPES | File extensions to check for | regex (see example below) |

So for example, here's my `.bash_profile`

```
export DATAH_SRC="/Volumes/fiber_data/"
export DATAH_FILETYPES="(mat|rhd|int|daq)"
export DATAH_DEST="/Volumes/industrial_age/workspace/staging/unprocessed/"
export DATAH_INTERVAL=2
```

This will copy .mat, .rhd, .int and .daq files, wait 2 minutes before scans, and copy files from `/Volumes/fiber_data/` to `/Volumes/industrial_age/workspace/staging/unprocessed/`.  If you wanted to copy only .wav files for instance, change `DATAH_FILETYPES` to `"(wav)"`, or `"(wav|mp3)"` to copy .mp3 as well.














