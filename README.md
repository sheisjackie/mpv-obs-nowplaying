# mpv-obs-nowplaying
Lua scripts for OBS on showing artist and title from audio tracks being played in mpv (linux).  Creates a file in homedir called mpvnp.txt.  
## usage
Create a text source in OBS, and change the source name in `obsnp.lua` from `np3` to whatever you call the new text source:  
`local source_name = "np3"`  
Launch mpv with the script:  
`mpv --script /path/to/mpvnp.lua <audiofiles>`  
Add the script `obsnp.lua` to OBS under Tools > Scripts.
