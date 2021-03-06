function Audio()
  local audio = {}
  audio.song = ''
  audio.music = love.audio.newSource("snd/spawn.wav", 'stream')

  function audio.change_map(name)
    if not (audio.song == name) then
      if not (love.filesystem.getInfo("snd/"..name..".wav") == nil) then
        audio.song = name
        audio.music:stop()
        audio.music = love.audio.newSource("snd/"..name..".wav", 'stream')
        audio.music:play()
      end
    end
  end


  return audio
end

return Audio
