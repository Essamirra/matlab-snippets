A = [4 2 1 1; 2 7 3 2; 1 3 9 1; 1 1 1 5];
f = [8; 15; 9; 5];
epsilon = 0.00001;
x = inv(A) * f
result = A*x
xyacobistep = zeros(5,1);
xzeidelstep = zeros(5,1);
for i=1:5
    
    [xyacobi, xyacobistep(i)] = yacobi(A, f, epsilon);    
    [xzeidel, xzeidelstep(i)] = zeidel(A, f, epsilon);
   if(i == 2)
       xyacobi
       xzeidel
   end
   epsilon = epsilon*10;
end
graph = [xyacobistep'; xzeidelstep']';
fontSize = 13;
xtick = [0.00001 0.0001 0.001 0.01 0.1];
plot(xtick,xyacobistep, 'LineWidth', 4);
hold on
plot(xtick,xzeidelstep, 'LineWidth', 4);
xlabel('Эпсилон', 'FontSize', fontSize);
ylabel('Количество шагов', 'FontSize', fontSize);
ax = gca;

ax.XScale = 'log';
ax.XLim=[0.00001 0.1];
ax.YLim=[0 100];
title('Количество шагов в зависимости от эпсилон', 'FontSize', fontSize);

grid on;
legend('Метод Якоби', 'Метод Гаусса-Зейделя');


