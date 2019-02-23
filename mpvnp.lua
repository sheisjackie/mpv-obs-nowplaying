function new_file_loaded()
   local metadata = mp.get_property_native("metadata")
   

   local artist = get_metadata(metadata, {"artist", "ARTIST"})
   local album = get_metadata(metadata, {"album", "ALBUM"})
   local title = get_metadata(metadata, {"title", "TITLE"})
   
   file = io.open("/home/jackie/mpvnp.txt", "w")
   file:write("Now playing: ", artist, " - ", title)
   file:close()
end

function get_metadata(data, keys)
   for key,value in pairs(keys) do
      if data[value] and ( string.len(data[value]) > 0 ) then
	 return data[value]
      end
   end
   return ""
end

      
mp.register_event("playback-restart", new_file_loaded)
