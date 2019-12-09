0: CP 130 120 // max = x;
1: CP 134 120 // tmp = x;
2: LT 134 121 // tmp = tmp < y
3: BZJ 5 134 // if(tmp == 0) 
4: CP 130 121  //max = y;
5: CP 135 130 //tmp1 = max;
6: LT 135 122 //tmp1 = tmp1 < z;
7: BZJ 9 135 // if(tmp1 == 0) 
8: CP 130 122  // max = z;
9: CP 136 130  //tmp2=max;
10: LT 136 123 //   tmp2=tmp2<g;
11: BZJ 13 136 //if(tmp2==0) 
12: CP 130 123 // max=g;
13: BZJi 64 0 // goto END	
64: 13


120: 200 // x
121: 300 // y
122: 500 // z
123: 600 // g

130: 0
134: 0
135: 0
136: 0
