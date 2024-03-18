### JYC March 2024

form Get dB intensity
comment Original files
sentence Original_folder /Users/jyc843/OneDrive - Northwestern University/MRT_stimuli
endform

writeFileLine: "'original_folder$'/"intensities.txt", "filename,intensity"

Create Strings as file list... list 'original_folder$'/*.wav
number_of_files = Get number of strings

for a from 1 to number_of_files

select Strings list
current_file$ = Get string... a
Read from file... 'original_folder$'/'current_file$'

db = Get intensity (dB)

soundname$ = "'current_file$'" - ".wav"

appendFileLine: "'original_folder$'/"db-intensities.txt", "'soundname$','rms'"

endfor

select all
Remove