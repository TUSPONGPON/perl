# HTTP Header
print "Content-Disposition: attachment; file = \"File\"\r\n\n";

# Actual File Content will go hear.
open( FILE, "<File" );
while(read(FILE, $buffer, 100) ){
   print("$buffer");
}