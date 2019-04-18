clc
clear all

A = 10*(rand(10,10) - 0.5)

imagesc(A);  % maps matrix to color grid

colormap('jet'); % This colormap maps low values to blue, and 
                        % high values to red
                        
k = 3;


saveas(gcf,strcat('fig',num2str(k),'.png'))

