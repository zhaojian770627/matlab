function y=eulerstep(t,y,h)
% 欧拉方法的一步
% 输入:当前时间t,当前值y,步长h
% 输出:在时间t+h的近似解
y=y+h*ydot(t,y);
