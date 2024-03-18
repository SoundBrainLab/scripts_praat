### JYC March 2024

form Get durations
comment Original files
sentence Original_folder /Users/jyc843/OneDrive - Northwestern University/TalkerID/ALL_ENG_ENG_HT1/split/male
endform

writeFileLine: "durations.txt", "filename,duration"

Create Strings as file list... list 'original_folder$'/*.wav
number_of_files = Get number of strings

for a from 1 to number_of_files

select Strings list
current_file$ = Get string... a
Read from file... 'original_folder$'/'current_file$'

dur = Get total duration

soundname$ = "'current_file$'" - ".wav"

appendFileLine: "durations.txt", "'soundname$','dur'"

endfor

select all
Remove