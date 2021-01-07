BEGIN {
    for (ii = 0; ii < 256; ++ii) {
        ch = sprintf("%c", ii);
        ascii[ch] = ii;
    }
h = 0 ;
strings="www.runoob.com"
#print "strings , " strings
if(h ==0 && length(strings)>0)
{
  for (i=1;i<= length(strings)  ; ++i) 
   {
      
      j=ascii[substr(strings,i,1)]
      
      #print substr(strings,i,1) " , " j
      print h " * 31 +" j |& "bc"
        "bc" |& getline var2
      #h=31*h+j 
      h=var2
      #print i","substr(strings,i,1) " , " j" , " h
   }   
}
#print "hash Result , "h
print "(" h " +2147483648)%4294967296-2147483648 "  |& "bc"
 "bc" |& getline Result 
#Result = (h+2147483648)%4294967296-2147483648;
print strings " , hashcode  " Result
}
 