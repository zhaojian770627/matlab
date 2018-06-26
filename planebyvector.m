% 画出两个向量决定的平面
function planebyvector(v1,v2)
%标准化v1、v2
v1=v1/norm(v1);
v2=v2/norm(v2);
%求v1、v2平面的法向量vn
vn=cross(v1,v2);
vn=vn/norm(vn);
%z轴单位向量vz
vz=[0 0 1];
%构建以v1为x轴，vn为z轴的新坐标系,M为xyz坐标系至新坐标系的映射矩阵
v1y=cross(vn,v1);
v1x=v1;
v1z=vn;
M=[v1x' v1y' v1z'];
%构建原坐标系内的z平面，
x=[-2:2];
y=[-2:2];
[gx gy]=meshgrid(x,y);
gz=zeros(size(gx));
%逐点与M相乘获取映射后的坐标点，NexXYZ(坐标点为列向量形式)
lx=reshape(gx,1,[]);
ly=reshape(gy,1,[]);
lz=reshape(gz,1,[]);
NewXYZ=M*[lx;ly;lz];
%还原各点为绘图形式
NewX=reshape(NewXYZ(1,:),size(gx));
NewY=reshape(NewXYZ(2,:),size(gx));
NewZ=reshape(NewXYZ(3,:),size(gx));
%绘制平面
hf=surf(NewX,NewY,NewZ);
set(hf,'facecolor','red','edgecolor','none');
%绘制原始向量
hold on
plot3([v2(1) 0 v1(1)],[v2(2) 0 v1(2)],[v2(3) 0 v1(3)],'o-','LineWidth',2)
axis equal
hold off