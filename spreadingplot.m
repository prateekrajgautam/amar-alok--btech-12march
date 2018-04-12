function[]=spreadingplot(matrix,rn,bn,sn,nsn,axissize)
r=10;
noofnodes=length(matrix);
fcolor=['b';'g';'r';'c';'k';'m'];
theta=[0:2*pi/noofnodes:2*pi];
xx=r*sin(theta);
yy=r*cos(theta)/1.5;
xy=cat(2,xx',yy');
axis([-r-2,r+2,-r-2,r+2])
num=1;
for i=1:10
    if i==1
        r=rn;
        ar=[];
    else
        for j=1:length(r)
            r1=(unique([r,unique(find(matrix(r(1,j),:)==1))]))
        end
        for k=1:length(r1)
            plot([xx(1,r),xx(1,r1(1,k))],[yy(1,r),yy(1,r1(1,k))],'-r')
        end
    end
end
% axis([-r-3,r+3,-r-3,r+3])
saveas(gcf,'graph2','jpg')
end
