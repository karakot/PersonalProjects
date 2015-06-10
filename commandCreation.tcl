#commandCreation

proc sum {args} {
puts $args
set sum 0
foreach a $args {
incr sum $a
}
return $sum
}
puts [sum 1 2 3 4]
puts [sum 1 2 3 4 5 6 7 8 9]