0 let i = 0
1 def fn l(i) = a%(y - i, x - i) + a%(y - i, x) + a%(y - i, x + i) + a%(y, x - i) + a%(y, x + i) + a%(y + i, x - i) + a%(y + i, x) + a%(y + i, x + i)
2 poke 53280, 0
3 poke 53281, 0
4 let tr% = 23
5 let tc% = 39
6 dim a%(tr%, tc%), b%(tr%, tc%)
7 let h = .2
8 let o = 1
9 let sr% = 3
10 let er% = 21
11 let ec% = 36
12 let c = 0
13 let g% = 0
14 let c1 = 2
15 let c2 = 3
16 gosub 1000
17 for y = 0 to tr%
18   for x = 0 to tc%
19     let a%(y, x) = b%(y, x)
20     if a%(y, x) then print "*";: goto 22
21     print " ";
22   next x
23 next y
24 print "generation:"; g%; "{home}";: let g% = g% + o
25 for y = o to tr% - o
26    for x = o to tc% - o
27      let c = fn l(o)
28      if a%(y, x) = o then if c <> c1 then if c <> c2 then let b%(y, x) = 0: goto 30
29      if a%(y, x) = 0 then if c = c2 then let b%(y, x) = o
30    next x
31 next y
32 if g% < 32767 then goto 17
64 goto 64
1000 print "{clear}{green}pet colonies, based upon space colony bytim hartnell circe 1983"
1001 print "which was based upon conway's"; chr$(13); "game of life{home}";
1002 for y = sr% to er%
1003   for x = sr% to ec%
1004     let b%(y, x) = rnd(0) + h
1005   next x
1006 next y
1007 poke 56334, peek(56334) and 254
1008 return
9999 donkeysoft
