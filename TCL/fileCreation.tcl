#fileCreation
proc mkFile {fileName} {
        set fileChannel [open $fileName w+]
        puts $fileChannel "DUMMYDUMMYDUMMY\nDUMMYDUMMYDUMMY"
        close $fileChannel
}
proc mkFolder {folderName} {
        file mkdir $folderName
}
mkFolder dumbFolder
for {set j 1} {$j <= 10} {incr j} {
        mkFolder dumbFolder/folder${j}
        for {set i 1} {$i <= 10} {incr i} {
                mkFile dumbFolder/folder${j}/dummy${i}.txt
        }
}
