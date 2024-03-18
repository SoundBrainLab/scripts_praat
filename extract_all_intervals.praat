form Extract all labelled intervals to separate soundfiles
comment Original files
sentence Original_folder /Users/jyc843/OneDrive - Northwestern University/TalkerID/test/mono
comment Where are the textgrids?
sentence Textgrid_folder /Users/jyc843/OneDrive - Northwestern University/TalkerID/test/mono
comment Save new files to?
sentence New_folder /Users/jyc843/OneDrive - Northwestern University/TalkerID/test/mono
endform

Create Strings as file list... list 'textgrid_folder$'/*.TextGrid
number_of_files = Get number of strings

for a from 1 to number_of_files

select Strings list
current_file$ = Get string... a
Read from file... 'textgrid_folder$'/'current_file$'

object_name$ = selected$ ("TextGrid")
Open long sound file... 'original_folder$'/'object_name$'.wav

select TextGrid 'object_name$'
number_of_intervals = Get number of intervals... 1

for b from 1 to number_of_intervals

select TextGrid 'object_name$'
interval_label$ = Get label of interval... 1 b

if interval_label$ <> ""

startpoint = Get starting point... 1 b
endpoint = Get end point... 1 b
select LongSound 'object_name$'
Extract part... startpoint endpoint no
Rename... 'interval_label$'
extractname$ = selected$ ("Sound")

newfilename$ = "'object_name$'" + "_" + "'extractname$'"
Write to WAV file... 'new_folder$'/'newfilename$'.wav
select Sound 'extractname$'
Remove

endif

endfor

select TextGrid 'object_name$'
plus LongSound 'object_name$'
Remove

endfor

clearinfo
print :O)