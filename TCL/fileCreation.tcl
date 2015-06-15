set dummyTxt "DUMMY DUMMY DUMMY \nDUMMY DUMMY DUMMY"

set fileChannel [open dumb.txt w+]
puts $fileChannel $dummyTxt
close $fileChannel

proc mkFile {fileName} {
	set fileChannel [open $fileName w+]
	puts $fileChannel "DUMMYDUMMYDUMMY\nDUMMYDUMMYDUMMY"
	close $fileChannel
}
for {set i 1} {$i <= 10} {incr i} { 
	mkFile dummy${i}.txt
}
