function ytdl-playlist
	youtube-dl --cookies ~/.ytdlcookie -f best $argv --add-metadata --download-archive downloaded.txt
end
