
local obs = _G.obslua
local source_name = "np3"
function update_nowplaying()
   local in_file = io.open("/home/jackie/mpvnp.txt", "r")
   local file_text = in_file:read()
   local obs_source = obs.obs_get_source_by_name(source_name)

   if obs_source ~= nil then
      local source_settings = obs.obs_source_get_settings(obs_source)
      obs.obs_data_set_string(source_settings, "text", file_text)
      obs.obs_source_update(obs_source, source_settings)
      obs.obs_data_release(source_settings)
      obs.obs_source_release(obs_source)
   end

   in_file:close()
end
obs.timer_add(update_nowplaying, 2000)
