clc
clear all
close all
% arrowsize=10;
axissize=5;


test1=input('\n press 0 for previous graph \n press 1 for generation new graph\n');
switch test1
    case 0
        load graph
    otherwise
        clc
        n=input('enter the no of nodes in graph');
        totalnoofnodes=n;
        totalnoofworkingnodes=totalnoofnodes;
        k=2;%minimmum degree
        [G,V,matrix,links,workingnodes,emptynodes]=graph(totalnoofnodes,totalnoofworkingnodes,k)
        save graph

end
%  plotgraph(totalnoofnodes,matrix,axissize,V,emptynodes);
clc
input('press enter to continue');
[rn,bn,sn,nsn]=assignnodes(workingnodes)

clc
input('press enter to continue plotting network')

plotnetwork(totalnoofnodes,matrix,axissize,V,emptynodes,rn,bn,sn,nsn);

clc
input('press enter to continue to show spreading of rumer from starting node');
spreadingplot(matrix,rn,bn,sn,nsn,axissize)



