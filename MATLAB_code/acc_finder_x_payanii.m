function [a14_x] = acc_finder_x_payanii(x1, y1, x2, y2, v1x,v1y, v2x, v2y)




m=1/10;

k_s= 10;

k_d= 1;

L_r= 1/13;


distance= sqrt((x1-x2)^2 + (y1-y2)^2);


theta_after= atan2((y2-y1),(x2-x1));



f_spring_x_13_14= -k_s* (distance - L_r)* cos(theta_after);




theta_damper_after= atan2((v2y-v1y),(v2x-v1x));


damper_force= -k_d * (sqrt((v1y-v2y)^2 + (v1x-v2x)^2));



f_damper_x_13_14 = damper_force *cos(theta_damper_after);




a14_x = (  f_spring_x_13_14  +   f_damper_x_13_14   )/m;



