function[]=plotnetwork(totalnoofnodes,matrix,axissize,V,emptynodes,rn,bn,sn,nsn);
n=totalnoofnodes;
 hold on
en=[];
r=10;
fcolor=['b';'g';'r';'c';'k';'m'];
theta=[0:2*pi/totalnoofnodes:2*pi];
xx=r*sin(theta);
yy=r*cos(theta)/1.5;
xy=cat(2,xx',yy');
axis([-r-2,r+2,-r-2,r+2])
num=1;
for i=1:totalnoofnodes
    if num==7
        num=1;
    end
    if numel(intersect(i,en))~=1
        if numel(intersect(i,nsn))~=0
            text(1.2*xy(i,1),1.2*xy(i,2),['\bullet' num2str(i)]);
        end
        if numel(intersect(i,rn))==1
            text(1.2*xy(i,1),1.2*xy(i,2),[num2str(i) ' Rumer']);
        end
        if numel(intersect(i,sn))~=0
            text(1.2*xy(i,1),1.2*xy(i,2),[num2str(i) ' **']);
        end
        if numel(intersect(i,bn))~=0
            text(1.2*xy(i,1),1.2*xy(i,2),[num2str(i) ' bn']);
        end
%     else
%         text(1.2*xy(i,1),1.2*xy(i,2),['*\ldots' num2str(i)]);
    end
       
    for j=1:totalnoofnodes
        if matrix(i,j)==1
            line([xx(1,i),xx(1,j)],[yy(1,i),yy(1,j)])
            num=num+1;
    if num==7
        num=1;
    end
        end
    end
    
end
title(['random complex network with ' num2str(length(V)) ' nodes'])
axis([-r-3,r+3,-r-3,r+3])
saveas(gcf,'graph1','jpg')