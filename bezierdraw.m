% 程序3.7 使用贝塞尔样条的自由绘制程序
% 在MATLAB的图形窗口中点击得到第一个点
% 然后在点击三次得到三点，给曲线增加更多段
% 按下回车键终止程序
function bezierdraw
plot([-1 1],[0 0],'k',[0 0],[-1 1],'k');
hold on;
t=0:.02:1;
[x,y]=ginput(1); % 进行一次鼠标点击
while(0==0)
    [xnew,ynew]=ginput(3); % 另外三次鼠标点击
    if length(xnew)< 3
        break % 按下回车键 终止
    end
    x=[x;xnew];y=[y;ynew]; % 画出样条点和控制点pts;
    plot([x(1) x(2)],[y(1) y(2)],'r:',x(2),y(2),'rs');
    plot([x(3) x(4)],[y(3) y(4)],'r:',x(3),y(3),'rs');
    plot(x(1),y(1),'bo',x(4),y(4),'bo');
    bx=3*(x(2)-x(1));by=3*(y(2)-y(1)); % 样条方程 ...
    cx=3*(x(3)-x(2))-bx;cy=3*(y(3)-y(2))-by;
    dx=x(4)-x(1)-bx-cx;dy=y(4)-y(1)-by-cy;
    xp=x(1)+t.*(bx+t.*(cx+t*dx)); % 霍纳方法
    yp=y(1)+t.*(by+t.*(cy+t*dy));
    plot(xp,yp) % 画出样条曲线
    x=x(4);y=y(4); % 将上一段的最后一个点作为第一点，继续
end
hold off