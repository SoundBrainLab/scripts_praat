### JYC March 2024

form Extract one tier from Textgrid
comment Original files
sentence Original_folder /Users/jyc843/OneDrive - Northwestern University/TalkerID/test
comment Save new files to
sentence New_folder /Users/jyc843/OneDrive - Northwestern University/TalkerID/test/mono
endform

Create Strings as file list... list 'original_folder$'/*.TextGrid
number_of_files = Get number of strings

for a from 1 to number_of_files

select Strings list
current_file$ = Get string... a
Read from file... 'original_folder$'/'current_file$'

Extract one tier... 1

newfilename$ = "'current_file$'" - ".TextGrid"

Write to text file... 'new_folder$'/'newfilename$'.TextGrid

endfor

select all
Remove