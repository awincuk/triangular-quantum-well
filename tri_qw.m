%1D TRIANGULAR QUANTUM WELL
% written by Adam Wincukiewicz <first name [dot] last name [at] gmail [dot] com>
close all
clear all
%============EDIT HERE=============%
charge = -1; % -1 if electrons (CB) 1, if holes (VB)
me = 0.063; % effective mass 
Field = 5.0; %in MV/m
n = 3; %number of energy levels
L = 50; %length of quantum well in nm
r = 100; %resolution
y_lim = 1.1; % limit on y-axis as maximum of n-function
norm = 6; %if your wavefunctions have too intensive amplitudes in comparison to energy, change this value.
%========STOP EDITING NOW=========%

q = 1.602 * 1e-19; %C
qF = Field*1e6; %V/m
x = linspace(0,L,r);
V = -1*charge*qF * x*1e-9; %triangular potential
m = me * 9.11 *1e-31; % effective mass in kg
hb = 6.582 * 1e-16; % h bar constant in eV*s


e0 = ((qF*hb)^2/(2*m))^(1/3) * q^(1/3);

for i = 1:n
    E(i) = (3/2*pi*(i-0.25))^(2/3) * e0;
    N(i) = (1/trapz((airy((qF*1e-9*x-E(i))/e0)).^2))^(1/2)/norm;
    phi(i,:) = -charge*(E(i) + N(i) * airy((qF*1e-9*x-E(i))/e0));
    xE(i,:) = linspace(-charge*E(i),-charge*E(i),r);
end

figure
plot(x,V)
xlim([0 L])
if charge == -1
    ylim([0 y_lim*max(phi(n,:))])
else
    ylim([y_lim*min(phi(n,:)) 0])
end
xlabel('z [nm]','fontsize',16)
ylabel('energy [eV]','fontsize',16)
hold on

for i = 1:n
    phi_p(i) = plot(x,phi(i,:),'LineWidth',2)
    plot(x,xE(i,:),'k--')
end



% legend([phi_p(1) phi_p(2) phi_p(3)],'\Psi_1(x)','\Psi_2(x)','\Psi_3(x)')
% set(gca,'fontsize',15)

