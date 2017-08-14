#!/usr/bin/perl
print "Content-Type:application/octet-stream; name = \"File\"\r\n";
print "Content-type: こんえと/xml\n\n";
print "Content-type: html\n\n";
print "<font size=+1>Environment</font>\n";
foreach (sort keys %ENV) {
   print "<b>$_</b>: $ENV{$_}<br>\n";
}
foreach $pair (@pairs) {
   $octal = 0377;	
   $hexa = 0xff;
   $arrayref  = \@ARGV;
   ($hexa, $value ,$octal) = split(/=/, $pair);
   $value =~ tr/+/ /;
   $value =~ s/%(.)/pack("C", hex($1))/eg;
   $value =~ arrayref;
   $FORM{$octal} = $value;
}
