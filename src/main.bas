0 i=.:poke53280,i:poke53281,i:deffnl(i)=a%(y-i,x-i)+a%(y-i,x)+a%(y-i,x+i)+a%(y,x-i)+a%(y,x+i)+a%(y+i,x-i)+a%(y+i,x)+a%(y+i,x+i):tr%=23:tc%=39:dima%(tr%,tc%),b%(tr%,tc%):h=.2:o=1:sr%=3:er%=21:ec%=36:c=.:g%=.:c1=2:c2=3:s$=" ":a$="*":gosub1000
1 fory=.totr%:forx=.totc%:a%(y,x)=b%(y,x):ifa%(y,x)thenprinta$;:goto3
2 prints$;
3 nextx,y:print"generation:"g%"{home}";:g%=g%+o:fory=ototr%-o:forx=ototc%-o:c=fnl(o):ifa%(y,x)=othenifc<>c1thenifc<>c2thenb%(y,x)=.:goto5
4 ifa%(y,x)=.thenifc=c2thenb%(y,x)=o
5 nextx,y:ifg%<32767then1
6 goto6
1000 print"{clear}{green}pet colonies, based upon space colony bytim hartnell circa 1983":print"which was based upon conway's"chr$(13)"game of life{home}";:fory=sr%toer%:forx=sr%toec%:b%(y,x)=rnd(.)+h:nextx,y:poke56334,peek(56334)and254:return
9999 donkeysoft
