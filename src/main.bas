0 poke53280,0:poke53281,0:def fn l(i)=a%(y-i,x-i)+a%(y-i,x)+a%(y-i,x+i)+a%(y,x-i)+a%(y,x+i)+a%(y+i,x-i)+a%(y+i,x)+a%(y+o,x+o):tr%=23:tc%=39:dim a%(tr%,tc%),b%(tr%,tc%):h=.2:o=1:sr%=3:er%=21:ec%=36:c=.:g%=.:c1=2:c2=3:gosub 1000
1 for y=.to tr%:for x=.to tc%:a%(y,x)=b%(y,x):if a%(y,x)=.then print" ";:goto 3
2 print"*";
3 next x,y:print "generation:";g%;"{home}";:g%=g%+o:for y=o to tr%-o:for x=o to tc%-o:c=.:c=fn l(o):if a%(y,x)=o and c<>c1and c<>c2then b%(y,x)=.:goto 5
4 if a%(y,x)=.and c=c2then b%(y,x)=o
5 next x,y:if g%<32768 then goto 1
6 goto6
1000 print"{clear}{green}pet colonies, based upon space colony bytim hartnell circe 1983":print"which was based upon conway's"chr$(13)"game of life{home}";:for y=sr% to er%:for x=sr% to ec%:b%(y,x)=rnd(.)+h:next x,y:return
