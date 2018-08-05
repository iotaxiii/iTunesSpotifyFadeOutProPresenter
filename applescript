on run {input, parameters}
  tell application "Spotify" to set initialVolumeSpotify to sound volume
  tell application "iTunes" to set initialVolumeiTunes to sound volume

  set lastVolumeSpotify to initialVolumeSpotify
  set lastVolumeiTunes to initialVolumeiTunes

  activate "ProPresenter 6" 

  set stepSpotify to (initialVolumeSpotify / 50)
  set stepiTunes to (initialVolumeiTunes / 50)

  repeat 50 times                 
                                set lastVolumeSpotify to (lastVolumeSpotify - stepSpotify)
    set lastVolumeiTunes to (lastVolumeiTunes - stepiTunes)
    tell application "Spotify" to set sound volume to lastVolumeSpotify
    tell application "iTunes" to set sound volume to lastVolumeiTunes
    delay 0.1
  end repeat

  tell application "Spotify" to pause
  tell application "iTunes" to pause
  delay 0.2
  tell application "Spotify" to set sound volume to initialVolumeSpotify
  tell application "iTunes" to set sound volume to initialVolumeiTunes

end run
