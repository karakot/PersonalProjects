#! /usr/bin/tclsh
proc folderDump {baseDir} {
        set reportChannel [open "flatten.report" a]
        set currentDir "current directory $baseDir"
        puts $reportChannel $currentDir
        set fileList [glob -nocomplain -directory $baseDir -types {f} -- "*"]
        set dirList [glob -nocomplain -directory $baseDir -types {d} -- "*"]
        foreach fileName $fileList {
                set fileEntry "file: $fileName"
                puts $reportChannel $fileEntry
        }
        close $reportChannel
        foreach dirName $dirList {
                folderDump $dirName
        }

        set reportChannel [open "flatten.report" a]
        puts $reportChannel "end of $baseDir"
        close $reportChannel
}

set reportChannel [open "flatten.report" w+]
close $reportChannel
folderDump dumbFolder
