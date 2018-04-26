0 def fn l(i) = a%(y - i, x - i) + a%(y - i, x) + a%(y - i, x + i) + a%(y, x - i) + a%(y, x + i) + a%(y + i, x - i) + a%(y + i, x) + a%(y + i, x + i)
1 poke 53280, 0
2 poke 53281, 0
3 tr% = 23
4 tc% = 39
5 dim a%(tr%, tc%), b%(tr%, tc%)
6 h = .2
7 o = 1
8 sr% = 3
9 er% = 21
10 ec% = 36
11 c = .
12 g% = .
13 c1 = 2
14 c2 = 3
15 i = 0 : gosub 1000
16 for y = . to tr%
17 for x = . to tc%
18 a%(y, x) = b%(y, x)
19 if a%(y, x) = . then print " ";: goto 21
20 print "*";
21 next x, y
22 print "generation:"; g%; "{home}";: g%=g%+o
23 for y = o to tr% - o
24 for x = o to tc% - o
25 c = .
26 c = fn l(o)
27 if a%(y, x) = o and c <> c1 and c <> c2 then b%(y,x)=.: goto 29
28 if a%(y, x) = . and c = c2 then b%(y, x) = o
29 next x,y
30 if g% < 32768 then goto 16
64 goto 64
1000 print "{clear}{green}pet colonies, based upon space colony bytim hartnell circe 1983"
1001 print "which was based upon conway's";chr$(13);"game of life{home}";
1002 for y = sr% to er%
1003 for x = sr% to ec%
1004 b%(y, x) = rnd(.) + h
1005 next x, y
1006 return
