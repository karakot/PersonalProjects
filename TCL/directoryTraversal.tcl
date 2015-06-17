#! /usr/bin/tclsh
proc folderDump {baseDir} {
        set directoryList [list]
        set currentDir "current directory $baseDir"
        puts $currentDir
        set directoryList [lappend $directoryList $currentDir]
        set fileList [glob -nocomplain -directory $baseDir -types {f} -- "*"]
        set dirList [glob -nocomplain -directory $baseDir -types {d} -- "*"]
        foreach fileName $fileList {
                # puts $fileName
                set fileEntry "file: $fileName"
                puts "$fileEntry"
        }
        if {[llength $dirList] ==0 } {
                puts  "end of tree"
                return $directoryList
        }
        foreach dirName $dirList {
                set directoryList [concat $directoryList [folderDump $dirName]]
        }
        return $directoryList
}
set dump [folderDump "./dumbFolder/"]
puts [llength $dump]
set out [open "flatten.report" w+]
foreach listing $dump {
        puts $out $listing
}
