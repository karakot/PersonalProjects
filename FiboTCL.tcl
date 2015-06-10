set sums {1 1}
for {set i 1} {$i <= 10} {incr i} {
set previousIndex [expr {$i-1}]
puts $previousIndex
set previous [lindex   $sums $previousIndex]
set next [lindex   $sums $i]
lappend sums [expr $previous+$next]
}
puts $sums