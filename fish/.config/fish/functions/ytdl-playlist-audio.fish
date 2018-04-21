function ytdl-playlist-audio
	youtube-dl --cookies ~/.ytdlcookie -x -f bestaudio --audio-format mp3 $argv --add-metadata --download-archive downloaded.txt
end
