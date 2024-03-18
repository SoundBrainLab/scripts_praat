### JYC March 2024

form Extract one channel from stereo
comment Original files
sentence Original_folder /Users/jyc843/OneDrive - Northwestern University/TalkerID/test
comment Save new files to
sentence New_folder /Users/jyc843/OneDrive - Northwestern University/TalkerID/test/mono
endform

Create Strings as file list... list 'original_folder$'/*.wav
number_of_files = Get number of strings

for a from 1 to number_of_files

select Strings list
current_file$ = Get string... a
Read from file... 'original_folder$'/'current_file$'

Extract one channel... 1

newfilename$ = "'current_file$'" - ".wav"

Write to WAV file... 'new_folder$'/'newfilename$'.wav

endfor

select all
Remove