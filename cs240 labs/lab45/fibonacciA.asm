0: BZJi 50 0 // go to first instruction of the function
1: BZJi 2 0 // END: goto END
2: 1

50: 100 

289: 2
290: 1
291: 0
292: 0xFFFFFFFD // = -3
293: 0xFFFFFFFE // = -2
294: 0xFFFFFFFF // = -1
295: 136 // RETURNpt2
296: 120 // RETURNpt1
297: 109 // SKIP
298: 100 // TOP
299: 0 // returnAddr
360: 400 // ptr = *360

350: 0 // tmp

400: 6 // n stack
401: 0 // return val
402: 1 // retrunAddr

700: 0 // lastresult


// TOP:
100: CPI 350 360 // tmp = stack[ptr];
101: LTi 350 2 //  if (stack[ptr] <= 1)
102: BZJ 297 350 //goto SKIP
103: CPI 700 360 // lastresult = stack[ptr];
104: ADD 360 292 // ptr = ptr - 3;
105: CP 350 360 // tmp = ptr
106: ADDi 350 5 // tmp = ptr + 5
107: CPI 306 350 // tmp2 = stack[ptr+5]
108: BZJi 306 0 // goto stack[ptr+5];

// SKIP:
109: CPI 350 360 // tmp = stack[ptr]
110: ADD 350 294 // tmp = stack[ptr] - 1;
111: CP 306 360 // tmp2 = ptr;
112: ADDi 306 3 // tmp2 = ptr + 3;
113: CPIi 306 350 // stack[ptr+3] = stack[ptr] - 1;
114: ADDi 306 1 // tmp2 = ptr + 4;
115: CPIi 306 291 // stack[ptr+4] = 0;
116: ADDi 306 1 // tmp= ptr + 5;
117: CPIi 306 296 // stack[ptr+5] = RETURNpt1;
118: ADDi 360 3 // ptr = ptr + 3;
119: BZJi 298 0 // goto TOP;

// RETURNpt1:
120: CP 350 360 // tmp = ptr;
121: ADDi 350 1 //tmp = ptr + 1;
122: CPIi 350 700 // stack[ptr + 1] = lastresult;
123: CPI 800 360 // tmp2 = stack[ptr];
124: ADD 800 293 // tmp2 = stack[ptr] - 2;
125: ADDi 350 2 // tmp = ptr + 3;
126: CPIi 350 800 // stack[ptr + 3] = stack[ptr] - 2;
127: ADDi 350 1 // tmp = ptr + 4; 
128: CPIi 350 291 // stack[ptr + 4] = 0;
129: ADDi 350 1 // tmp = ptr + 5; 
130: CPIi 350 295 // stack[ptr + 5] = RETURNpt2;
131: ADDi 360 3 // ptr = ptr + 3;
132: BZJi 298 0 // goto TOP; 

// RETURNpt2:
136: CP 350 360 // tmp = ptr;
137: ADDi 350 1 //tmp = ptr + 1;
138: CPI 802 350 // 
139: ADD 700 802 //lastresult += stack[ptr + 1];
140: ADD 360 292 // ptr = ptr - 3;
141: CP 350 360 // tmp = ptr;
142: ADDi 350 5 // tmp = ptr + 5;
143: CPI 801 350 // tmp3 = stack[ptr+5];
144: BZJi 801 0 // goto stack[ptr+5];

