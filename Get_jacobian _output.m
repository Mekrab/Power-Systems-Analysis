clear all
close all

% Builds an equation for power injection, real and imaginary


Ybus=      [ 0.1545 - 2.4299i  -0.0990 + 0.9901i  -0.0555 + 1.6648i   0.0000 + 0.0000i
            -0.0990 + 0.9901i   0.4990 - 3.5651i   0.0000 + 0.0000i  -0.4000 + 2.8000i
            -0.0555 + 1.6648i   0.0000 + 0.0000i   0.0555 - 6.5398i   0.0000 + 5.0000i
             0.0000 + 0.0000i  -0.4000 + 2.8000i   0.0000 + 5.0000i   0.4000 - 7.6900i
];



syms t2 t3 t4 V3 V4 real

t1=0;
V1=1.02;
V2=1.04;



%Builds the vectors of V and theta
V = [V1 V2 V3 V4];
t=[t1 t2 t3 t4];




ii=4; %Here you specify the bus you are interested in



P=0;
%Gets a real power injection
for jj=1:length(V)
    P=P+V(ii)*V(jj)*(real(Ybus(ii,jj))*cos(t(ii)-t(jj))+...
                     imag(Ybus(ii,jj))*sin(t(ii)-t(jj))); 
end

P

Q=0;
%Gets an imaginary power injection
for jj=1:length(V)
    Q=Q+V(ii)*V(jj)*(real(Ybus(ii,jj))*sin(t(ii)-t(jj))-...
                     imag(Ybus(ii,jj))*cos(t(ii)-t(jj)));
end

Q