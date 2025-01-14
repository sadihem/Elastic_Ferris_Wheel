h = figure;

axis tight manual

ax = gca;
ax.NextPlot = 'replaceChildren';
loops =1000 ; % 100001

h.Visible = 'off';
for i = 1:loops

circle( X(i*1,53), X(i*1,54),.5)
hold on
circle( X(i*1,1), X(i*1,3),.5)
circle( X(i*1,5), X(i*1,7),.5)

circle( X(i*1,9), X(i*1,11),.5)
circle( X(i*1,13), X(i*1,15),.5)
circle( X(i*1,17), X(i*1,19),.5)
circle( X(i*1,21), X(i*1,23),.5)
circle( X(i*1,25), X(i*1,27),.5)
circle( X(i*1,29), X(i*1,31),.5)
circle( X(i*1,33), X(i*1,35),.5)
circle( X(i*1,37), X(i*1,39),.5)
circle( X(i*1,41), X(i*1,43),.5)
circle( X(i*1,45), X(i*1,47),.5)
circle( X(i*1,49), X(i*1,51),.5)



ylim([-20 20])
xlim([-20 20])
    drawnow
    
   
    M(i) = getframe;

end
save M 
h.Visible = 'on';

movie(M);
