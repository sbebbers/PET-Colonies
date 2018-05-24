0 i = .
1 def fn l(i) = a%(y - i, x - i) + a%(y - i, x) + a%(y - i, x + i) + a%(y, x - i) + a%(y, x + i) + a%(y + i, x - i) + a%(y + i, x) + a%(y + i, x + i)
2 poke 53280, i
3 poke 53281, i
4 tr% = 23
5 tc% = 39
6 dim a%(tr%, tc%), b%(tr%, tc%)
7 h = .2
8 o = 1
9 sr% = 3
10 er% = 21
11 ec% = 36
12 c = .
13 g% = .
14 c1 = 2
15 c2 = 3
16 gosub 1000
17 for y = . to tr%
18 for x = . to tc%
19 a%(y, x) = b%(y, x)
20 if a%(y, x) = . then print " ";: goto 22
21 print "*";
22 next x, y
23 print "generation:"; g%; "{home}";: g% = g% + o
24 for y = o to tr% - o
25 for x = o to tc% - o
26 c = fn l(o)
27 if a%(y, x) = o and c <> c1 and c <> c2 then b%(y, x) = .: goto 29
28 if a%(y, x) = . and c = c2 then b%(y, x) = o
29 next x,y
30 if g% < 32768 then goto 17
64 goto 64
1000 print "{clear}{green}pet colonies, based upon space colony bytim hartnell circe 1983"
1001 print "which was based upon conway's";chr$(13);"game of life{home}";
1002 for y = sr% to er%
1003 for x = sr% to ec%
1004 b%(y, x) = rnd(.) + h
1005 next x, y
1006 return
