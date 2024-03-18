#######################
#### JYC March 2024
#### Gets pitch measures (mean, min, max) of .wav files in a directory
#### and saves them to a .txt file
#### Enter the folder path without the '/' at the end
#######################

form Extract_Pitch_Measures
  sentence Orig_folder
endform

writeFileLine: "./pitch_list.txt", "Filename,pitch,minpitch,maxpitch"

wavs$ = orig_folder$ + "/*.wav"

wavList = Create Strings as file list: "wavList", wavs$
selectObject: wavList

numberOfFiles = Get number of strings

for i from 1 to numberOfFiles
    fileName$ = Get string... i
    Read from file... 'orig_folder$'/'fileName$'
	baseName$ = fileName$ - ".wav"
    To Pitch... 0.01 60 250
	select Pitch 'baseName$'
    pitch = Get mean: 0, 0, "Hertz"
    minPitch = Get minimum: 0, 0, "Hertz", "Parabolic"
    maxPitch = Get maximum: 0, 0, "Hertz", "Parabolic"
	appendFileLine: "pitch_list.txt", "'fileName$','pitch','minPitch','maxPitch'"
    Remove
	select Strings wavList
endfor
select all
Remove

