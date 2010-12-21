{
 count[$10] = count[$10] + 1
}

END {
for ( key in count ) {
print key " " count[key]
}
}
