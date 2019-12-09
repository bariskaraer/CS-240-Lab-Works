0: CP 130 120 // min = x
1: CP 134 121 // tmp = y
2: LT 134 120 // tmp = tmp < x
3: BZJ 6 134 // if(tmp == 0) goto END
4: CP 130 121 // min = y
5: BZJi 6 0  // goto END

6: 5

120: 37 // x
121: 220 // y

