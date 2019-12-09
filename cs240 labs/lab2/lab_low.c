  // This is also in a high-level language
  // but every line corresponds to an assembly instruction
  max = x;
  tmp = x;
  tmp = tmp < y;
  if(tmp == 0) goto line8;
  max = y;
line8:
  tmp1 = max;
  tmp1= tmp1 < z;
  if(tmp1==0) goto line13;
  max = z;
line13:
  tmp2=max;
  tmp2=tmp2<g;
  if(tmp2==0) goto END;
  max=g;
END:
  goto END;
