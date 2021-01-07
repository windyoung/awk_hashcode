function  hashcode(strings)
{
for (ii = 0; ii < 256; ++ii) {
        ch = sprintf("%c", ii);
        ascii[ch] = ii;
    }
h = 0 ;
if(h ==0 && length(strings)>0)
{
  for (i=1;i<= length(strings)  ; ++i) 
   {
      j=ascii[substr(strings,i,1)]
      print h " * 31 +" j |& "bc"
        "bc" |& getline var2
      h=var2
      #print i","substr(strings,i,1) " , " j" , " h
   }   
}
print "(" h " +2147483648)%4294967296-2147483648 "  |& "bc"
 "bc" |& getline Result 
#print strings " , hashcode  " Result
return Result
}
## test hashcode
BEGIN {
  a ="www.runoob.com"
  Hcode=  hashcode(a)
  print a " , hashcode  " Hcode
}
 