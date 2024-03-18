### JYC March 2024

form Get RMS intensity
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

rms = Get root-mean-square... 0 0

soundname$ = "'current_file$'" - ".wav"

appendFileLine: "'original_folder$'/"intensities.txt", "'soundname$','rms'"

endfor

select all
Remove