ini_open("settings.ini");
image_index = ini_read_real("Audio", "Volume", 1);
currentVolume = image_index;
audio_master_gain(currentVolume/10);
ini_close();