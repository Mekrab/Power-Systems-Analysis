%Builds Jacobian Matrix

syms t2 t3 t4 V3 V4 real 

x=[t2 t3 t4 V3 V4]';


% F = [P2 P3 P4 Q3 Q4]'

F=[ (6564363*sin(t2))/6250000 - (65637*cos(t2))/625000 - (26*V4*((2*cos(t2 - t4))/5 - (14*sin(t2 - t4))/5))/25 + 84331/156250-0.4
    
    (111*V3^2)/2000 - (51*V3*((111*cos(t3))/2000 - (2081*sin(t3))/1250))/50 + 5*V3*V4*sin(t3 - t4)+1
    
    (2*V4^2)/5 - (26*V4*((2*cos(t2 - t4))/5 + (14*sin(t2 - t4))/5))/25 - 5*V3*V4*sin(t3 - t4)
    
    (32699*V3^2)/5000 - (51*V3*((2081*cos(t3))/1250 + (111*sin(t3))/2000))/50 - 5*V3*V4*cos(t3 - t4)+0.3
    
    (769*V4^2)/100 - (26*V4*((14*cos(t2 - t4))/5 - (2*sin(t2 - t4))/5))/25 - 5*V3*V4*cos(t3 - t4)
];
    
    
    
    
for ii=1:length(x)
    for jj=1:length(x)
        J(ii,jj)=diff(F(ii),x(jj));
    end
end


J