BEGIN { 
   while ( ( getline < checkfile ) > 0 ) {     #### Getting the 1st coloumn of the checkfile line by line into a check array 
       check[$1] = 1			       #### Putting it to an array
   }

}
{
   if ( check[$1] )  {                              #### If values are in source file 
   print $0 
}

}

#### USAGE
#### awk -F "<field_seperator>" -f <path to awk script> -vcheckfile=<path to check file> <source file}
