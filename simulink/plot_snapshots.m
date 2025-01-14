% for plotting
%:100001
for i=100000



circle(x1.Data(i),y1.Data(i),.5)
hold on
circle(x2.Data(i),y2.Data(i),.5)
circle(x3.Data(i),y3.Data(i),.5)
circle(x4.Data(i),y4.Data(i),.5)
circle(x5.Data(i),y5.Data(i),.5)
circle(x6.Data(i),y6.Data(i),.5)
circle(x7.Data(i),y7.Data(i),.5)
circle(x8.Data(i),y8.Data(i),.5)
circle(x9.Data(i),y9.Data(i),.5)
circle(x10.Data(i),y10.Data(i),.5)
circle(x11.Data(i),y11.Data(i),.5)
circle(x12.Data(i),y12.Data(i),.5)
circle(x13.Data(i),y13.Data(i),.5)
circle(x14.Data(i),y14.Data(i),.5)
ylim([-20 20])
xlim([-20 20])
end

% plot(x1(t),y1(t),'ro','MarkerSize',m_1*10,'MarkerFaceColor','r')
% 
% 
% hold on;
% plot([0 x1(t)],[0 y_1(t)],'r-');
% fanimator(@(t) plot(x_2(t),y_2(t),'go','MarkerSize',m_2*10,'MarkerFaceColor','g'));
% fanimator(@(t) plot([x_1(t) x_2(t)],[y_1(t) y_2(t)],'g-'));
% Add a piece of text to count the elapsed time by using the text function. Use num2str to convert the time parameter to a string.
% 
% fanimator(@(t) text(-0.3,0.3,"Timer: "+num2str(t,2)));
% hold off;