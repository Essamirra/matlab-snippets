%% 3-D Plots
% Three-dimensional plots typically display a surface defined by a function
% in two variables, _z = f(x,y)_ .
%%
% To evaluate _z_, first create a set of (_x,y_) points over the domain
% of the function using |meshgrid|.

% Copyright 2015 The MathWorks, Inc.

[X,Y] = meshgrid(-100:.2:100);                                
%Z = X .* exp(-X.^2 - Y.^2);
Z = Y.^2 + (-1*(1.5*(X+0.5)).^2 + Y +2).^2;
G1 = -0.2 .* X.^2 - Y + 0.5;
G2 = X - Y - 1;
G3 = (X+1.5).^2 - (Y +1.5).^2 + 2;
%%
% Then, create a surface plot.
figure;
%C1 = contour(G1, [0 0]);
Z1 = contour(Z, 'r');
clabel(Z1);
hold on
%C2 = contour(G2, [0 0], 'r');
%C3 = contour(G3, [0 0], 'b');
contour3(max(max(G1,G2), G3), [0 0], 'm')

hold off

%%
% Both the |surf| function and its companion |mesh| display surfaces in
% three dimensions. |surf| displays both the connecting lines and the faces
% of the surface in color. |mesh| produces wireframe surfaces that color
% only the lines connecting the defining points.
