function music --wraps='mpv --input-ipc-server=/tmp/socket --ytdl-raw-options="yes-playlist=,format=best*[vcodec=none]"' --description 'alias music mpv --input-ipc-server=/tmp/socket --ytdl-raw-options="yes-playlist=,format=best*[vcodec=none]"'
  mpv --input-ipc-server=/tmp/socket --ytdl-raw-options="yes-playlist=,format=best*[vcodec=none]" $argv
        
end
