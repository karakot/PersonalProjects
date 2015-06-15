proc add {var in} {
upvar 1 $var a
incr a $in
}
set a 2
add a 2
puts $a
add a 5
puts $a
