#reverseString
set word "desserts"
puts $word
set length [string length $word]
set drow ""
for {set i 1} {$i <= $length} {incr i} {
set sIndex [expr $length-$i]
append drow [string index $word $sIndex]
}
puts $drow