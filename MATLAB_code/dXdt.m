function dXdt = dXdt(t,X)



x2= X(1); v2x=X(2); y2= X(3); v2y=X(4);

x3= X(5); v3x=X(6); y3= X(7); v3y=X(8);

x4= X(9); v4x=X(10); y4= X(11); v4y=X(12);

x5= X(13); v5x=X(14); y5= X(15); v5y=X(16);

x6= X(17); v6x=X(18); y6= X(19); v6y=X(20);

x7= X(21); v7x=X(22); y7= X(23); v7y=X(24);

x8= X(25); v8x=X(26); y8= X(27); v8y=X(28);

x9= X(29); v9x=X(30); y9= X(31); v9y=X(32);

x10= X(33); v10x=X(34); y10= X(35); v10y=X(36);

x11= X(37); v11x=X(38); y11= X(39); v11y=X(40);

x12= X(41); v12x=X(42); y12= X(43); v12y=X(44);

x13= X(45); v13x=X(46); y13= X(47); v13y=X(48);

x14= X(49); v14x=X(50); y14= X(51); v14y=X(52);

x1 = X(53); y1= X(54);v1x= X(55); v1y=X(56);



dXdt = [v2x; acc_x_finder_miani(x1, y1, x2, y2, x3, y3, v1x, v1y, v2x,v2y, v3x, v3y) ; v2y ; acc_y_finder_miani(x1, y1, x2, y2, x3, y3, v1x, v1y, v2x,v2y, v3x, v3y);
    
v3x; acc_x_finder_miani(x2, y2, x3, y3, x4, y4, v2x, v2y, v3x,v3y, v4x, v4y) ; v3y ; acc_y_finder_miani(x2, y2, x3, y3, x4, y4, v2x, v2y, v3x,v3y, v4x, v4y);

v4x; acc_x_finder_miani(x3, y3, x4, y4, x5, y5, v3x, v3y, v4x,v4y, v5x, v5y) ; v4y ; acc_y_finder_miani(x3, y3, x4, y4, x5, y5, v3x, v3y, v4x,v4y, v5x, v5y);

v5x; acc_x_finder_miani(x4, y4, x5, y5, x6, y6, v4x, v4y, v5x,v5y, v6x, v6y) ; v5y ; acc_y_finder_miani(x4, y4, x5, y5, x6, y6, v4x, v4y, v5x,v5y, v6x, v6y);

v6x; acc_x_finder_miani(x5, y5, x6, y6, x7, y7, v5x, v5y, v6x,v6y, v7x, v7y) ; v6y ; acc_y_finder_miani(x5, y5, x6, y6, x7, y7, v5x, v5y, v6x,v6y, v7x, v7y);

v7x; acc_x_finder_miani(x6, y6, x7, y7, x8, y8, v6x, v6y, v7x,v7y, v8x, v8y) ; v7y ; acc_y_finder_miani(x6, y6, x7, y7, x8, y8, v6x, v6y, v7x,v7y, v8x, v8y);

v8x; acc_x_finder_miani(x7, y7, x8, y8, x9, y9, v7x, v7y, v8x,v8y, v9x, v9y) ; v8y ; acc_y_finder_miani(x7, y7, x8, y8, x9, y9, v7x, v7y, v8x,v8y, v9x, v9y);

v9x; acc_x_finder_miani(x8, y8, x9, y9, x10, y10, v8x, v8y, v9x,v9y, v10x, v10y) ; v9y ; acc_y_finder_miani(x8, y8, x9, y9, x10, y10, v8x, v8y, v9x,v9y, v10x, v10y);

v10x; acc_x_finder_miani(x9, y9, x10, y10, x11, y11, v9x, v9y, v10x,v10y, v11x, v11y) ; v10y ; acc_y_finder_miani(x9, y9, x10, y10, x11, y11, v9x, v9y, v10x,v10y, v11x, v11y);

v11x; acc_x_finder_miani(x10, y10, x11, y11, x12, y12, v10x, v10y, v11x,v11y, v12x, v12y) ; v11y ; acc_y_finder_miani(x10, y10, x11, y11, x12, y12, v10x, v10y, v11x,v11y, v12x, v12y);

v12x; acc_x_finder_miani(x11, y11, x12, y12, x13, y13, v11x, v11y, v12x,v12y, v13x, v13y) ; v12y ; acc_y_finder_miani(x11, y11, x12, y12, x13, y13, v11x, v11y, v12x,v12y, v13x, v13y);

v13x; acc_x_finder_miani(x12, y12, x13, y13, x14, y14, v12x, v12y, v13x,v13y, v14x, v14y) ; v13y ; acc_y_finder_miani(x12, y12, x13, y13, x14, y14, v12x, v12y, v13x,v13y, v14x, v14y);

v14x;  acc_finder_x_payanii(x13, y13, x14, y14, v13x,v13y, v14x, v14y)   ; v14y ; acc_finder_y_payanii(x13, y13, x14, y14, v13x,v13y, v14x, v14y) ;
   
-5 * sin((0.4 + 0.02 * t)*t)* (0.4 + 0.04 * t);   5 * cos((0.4 + 0.02 * t)*t)* (0.4 + 0.04 * t);  -5 * sin((0.4 + 0.02 * t)*t)* 0.04 + (0.4 + 0.04 * t) * -5 * cos((0.4 + 0.02 * t)*t) * (0.4 + 0.04 * t);  5 * cos((0.4 + 0.02 * t)*t)* 0.04 + (0.4 + 0.04 * t) * -5 * sin((0.4 + 0.02 * t)*t)* (0.4 + 0.04 * t);
];







end

