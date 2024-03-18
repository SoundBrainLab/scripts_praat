### JYC March 2024

form Match duration
comment Original files
sentence Original_folder /Users/jyc843/OneDrive - Northwestern University/TalkerID/ALL_ENG_ENG_HT1/split/male/s10
comment Save new files to
sentence New_folder /Users/jyc843/OneDrive - Northwestern University/TalkerID/ALL_ENG_ENG_HT1/split/male/s10/length-matched
comment Target duration
sentence Target_dur 1.542245
endform

Create Strings as file list... list 'original_folder$'/*.wav
number_of_files = Get number of strings

for a from 1 to number_of_files

select Strings list
current_file$ = Get string... a
Read from file... 'original_folder$'/'current_file$'

dur = Get total duration
fac = 'target_dur$' / 'dur'

Lengthen (overlap-add)... 75 600 fac

newfilename$ = "'current_file$'" - ".wav"

Write to WAV file... 'new_folder$'/'newfilename$'.wav

endfor

select all
Remove