proc add {var} {
upvar 1 $var a
incr a 2
}
set a 2
add a
puts $a