#! /usr/bin/tclsh
proc folderDump {baseDir} {
        set reportChannel [open "flatten.report" a]
        set currentDir "current directory $baseDir"
        puts $currentDir
        set fileList [glob -nocomplain -directory $baseDir -types {f} -- "*"]
        puts $fileList
        set dirList [glob -nocomplain -directory $baseDir -types {d} -- "*"]
        puts [llength $fileList]
        puts [llength $dirList]
        foreach fileName $fileList {
                puts $reportChannel $fileName
        }
        if {[llength $dirList] ==0 } {
                puts $reportChannel "end of directory"
        }
        close $reportChannel
        foreach dirName $dirList {
                folderDump $dirName
        }
}
set reportChannel [open "flatten.report" w+]
close $reportChannel
