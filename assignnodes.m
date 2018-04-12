function[rn,bn,sn,nsn]=assignnodes(workingnodes)
 wn0=workingnodes
 
 rumernode=wn0(1,randi(length(wn0)))
 wn1=setdiff(wn0,rumernode)
 rn=rumernode;
 
 beaconnodes=unique(wn1(1,randi(length(wn1),1,ceil(0.3*length(wn1)))))
 wn2=setdiff(wn1,beaconnodes)
 bn=beaconnodes;
 
 spreadingnodes=unique(wn2(1,randi(length(wn2),1,ceil(0.4*length(wn2)))))
 wn3=setdiff(wn2,spreadingnodes)
 sn=spreadingnodes
 
 nonspreadingnodes=wn3
 nsn=nonspreadingnodes
end