function [ a13_x] = acc_x_finder_miani(x0, y0, x1, y1, x2, y2, v0x, v0y, v1x,v1y, v2x, v2y)
m=1/10;

k_s= 10;

k_d= 1;

L_r= 1/13;

distance_13_14= sqrt((x1-x2)^2 + (y1-y2)^2);

distance_12_13= sqrt((x1-x0)^2 + (y1-y0)^2);




theta_after= atan2((y1-y2),(x1-x2));


f_spring_x_13_14= -k_s* (distance_13_14 - L_r)* cos(theta_after);




theta_before= atan2((y1-y0),(x1-x0));


f_spring_x_12_13= -k_s* (distance_12_13 - L_r)* cos(theta_before);







theta_damper_after= atan2((v1y-v2y),(v1x-v2x));




damper_force= -k_d * (sqrt((v1y-v2y)^2 + (v1x-v2x)^2));

f_damper_x_13_14 = damper_force *cos(theta_damper_after);




theta_damper_before= atan2((v1y-v0y),(v1x-v0x));




damper_force_before= -k_d * (sqrt((v0y-v1y)^2 + (v0x-v1x)^2));

f_damper_x_12_13 = damper_force_before *cos(theta_damper_before);







a13_x = (  f_spring_x_13_14  +   f_damper_x_13_14  + f_spring_x_12_13 + f_damper_x_12_13 )/m;

