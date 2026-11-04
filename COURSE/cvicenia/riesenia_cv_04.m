%% RIESENIA - Cvicenia 4: Grafika a vizualizacia dat
% SPSE Karola Adlera 5
%
% Kazda sekcia zacina prikazom figure, takze sa otvori nove okno
% a predchadzajuci graf zostane na porovnanie.
% Ked je okien prilis vela, napis do Command Window:  close all

clc; clear; close all;

%% A1) Body spojene useckami
figure
x = 0:4;
y = x.^2;
plot(x, y, 'o-')
title('y = x^2 z piatich bodov')
% Medzi bodmi su rovne usecky - MATLAB o parabole nic nevie.

%% A2) Malo bodov a vela bodov
figure
x1 = linspace(0, 2*pi, 10);
x2 = linspace(0, 2*pi, 200);
plot(x1, sin(x1), 'o-')
hold on
plot(x2, sin(x2))
hold off
legend('10 bodov', '200 bodov')

%% A3) plot s jednym argumentom
figure
y = [3 7 2 9 4];
plot(y, 'o-')
% Na osi x je poradie prvkov: 1, 2, 3, 4, 5 - to iste ako plot(1:5, y)

%% A4) Rozne dlhe vektory
% try/catch zachyti chybu, aby skript pokracoval dalej
try
    plot(1:5, 1:6)
catch chyba
    disp(chyba.message)
end
% Oprava: obe dlzky musia sediet
figure
plot(1:6, 1:6)

%% A5) linspace a dvojbodka
a = 0:0.3:1
b = linspace(0, 1, 4)
% a konci cislom 0.9, jednotku nedosiahne - b konci presne na 1
figure
x = linspace(0, 5, 200);
plot(x, exp(-x))
title('e^{-x}')

%% B1) LineSpec - styri krivky
figure
x = linspace(0, 2*pi, 30);
plot(x, sin(x), 'r-')
hold on
plot(x, cos(x), 'b--')
plot(x, sin(x) + 1, 'g:o')
plot(x, cos(x) - 1, 'k-.s')
hold off
legend('r-', 'b--', 'g:o', 'k-.s')

%% B2) Len znacky bez ciary
figure
x = linspace(0, 2*pi, 20);
plot(x, sin(x), 's')
% Ak v LineSpec chyba styl ciary, ale je tam znacka, ciara sa nekresli.

%% B3) Pomenovane parametre
figure
x = linspace(0, 2*pi, 15);
plot(x, sin(x), '-o', ...
     'LineWidth',       3, ...
     'Color',           [0.5 0 0.8], ...
     'MarkerSize',      10, ...
     'MarkerFaceColor', 'y', ...
     'MarkerEdgeColor', 'k')

%% B4) Farba ako RGB a ako hex
figure
x = linspace(0, 2*pi, 200);
plot(x, sin(x), 'Color', [0.85 0.33 0.10], 'LineWidth', 4)
hold on
plot(x, sin(x) - 0.3, 'Color', '#D95319', 'LineWidth', 4)
hold off
legend('[0.85 0.33 0.10]', '#D95319')
% Obe farby su prakticky rovnake - hex zapis je len iny sposob zapisu.

%% B5) Znacky len v kazdom 25. bode
figure
x = linspace(0, 4*pi, 500);
plot(x, sin(x), '-o', 'MarkerIndices', 1:25:length(x))

%% B6) Poradie farieb
figure
x = linspace(0, 2*pi, 200);
hold on
for k = 1:9
    plot(x, sin(x) + k)
end
hold off
% Krivky 8 a 9 maju rovnaku farbu ako 1 a 2 - farieb je len 7.
C = get(gca, 'ColorOrder')

%% B7) Zmena vlastnosti cez handle
figure
x = linspace(0, 2*pi, 200);
h = plot(x, sin(x));
h.LineWidth = 3;
h.Color     = 'r';
h.LineStyle = '--';
sirka = h.LineWidth
farba = get(h, 'Color')

%% C1) Kompletne popisany graf
figure
t = linspace(0, 0.04, 1000);
u = 325 * sin(2*pi*50*t);
plot(t*1000, u, 'LineWidth', 1.5)
title('Napatie v sieti 50 Hz')
xlabel('cas t [ms]')
ylabel('napatie u [V]')
grid on

%% C2) Legenda dvoma sposobmi
figure
x = linspace(0, 2*pi, 200);
subplot(1, 2, 1)
plot(x, sin(x))
hold on
plot(x, cos(x))
hold off
legend('sin(x)', 'cos(x)', 'Location', 'southwest')
title('zoznam textov')

subplot(1, 2, 2)
plot(x, sin(x), 'DisplayName', 'sin(x)')
hold on
plot(x, cos(x), 'DisplayName', 'cos(x)')
hold off
legend('Location', 'eastoutside')
title('DisplayName')

%% C3) TeX v popisoch
figure
t = linspace(0, 5, 200);
plot(t, 12*(1 - exp(-t)))
title('Nabijanie: u_C = U(1 - e^{-t/\tau})')
xlabel('\omega t')
ylabel('u_C [V]')
text(2, 6, 'subor_vysledky.m')                        % ZLE: _v sa zmeni na dolny index
text(2, 4, 'subor\_vysledky.m')                       % \_ = obycajne podciarknutie
text(2, 2, 'subor_vysledky.m', 'Interpreter', 'none') % TeX uplne vypnuty

%% C4) Rozsah osi a chyba v xlim
figure
x = linspace(-pi, pi, 1000);
plot(x, tan(x))
ylim([-5 5])
xlim([-pi pi])
title('tan(x) s orezanou osou y')
try
    xlim([5 1])
catch chyba
    disp(chyba.message)
end

%% C5) axis equal - kruznica
figure
t = linspace(0, 2*pi, 200);
subplot(1, 2, 1)
plot(cos(t), sin(t))
title('bez axis equal')
subplot(1, 2, 2)
plot(cos(t), sin(t))
axis equal
title('axis equal')

%% C6) Vyznacenie maxima
figure
x = linspace(0, 4, 400);
y = x .* exp(-x);
plot(x, y, 'LineWidth', 1.5)
[ymax, i] = max(y);
hold on
plot(x(i), ymax, 'ro', 'MarkerFaceColor', 'r')
hold off
xline(x(i), '--', 'maximum')
yline(0)
text(x(i) + 0.1, ymax + 0.01, sprintf('max = %.3f', ymax))
ylim([-0.05 0.45])

%% C7) Vlastne znacky na osi x
figure
x = linspace(0, 2*pi, 200);
plot(x, sin(x), 'LineWidth', 1.5)
xticks(0:pi/2:2*pi)
xticklabels({'0', '\pi/2', '\pi', '3\pi/2', '2\pi'})
xlim([0 2*pi])
set(gca, 'FontSize', 12)
grid on
grid minor

%% C8) Logaritmicka os
figure
x = 0:0.1:5;
subplot(1, 2, 1)
plot(x, 10.^x)
title('linearna os y')
subplot(1, 2, 2)
semilogy(x, 10.^x)
title('semilogy')
grid on

%% D1) hold on a bez neho
figure
x = linspace(0, 2*pi, 200);
plot(x, sin(x))
hold on
plot(x, cos(x))
plot(x, sin(2*x))
hold off
legend('sin(x)', 'cos(x)', 'sin(2x)')
% Bez hold on by zostala len posledna krivka sin(2x).

%% D2) Viac dvojic v jednom prikaze
figure
x = linspace(0, 2*pi, 200);
plot(x, sin(x), 'b-', x, cos(x), 'r--', x, sin(x).*cos(x), 'k:', 'LineWidth', 1.5)
legend('sin', 'cos', 'sin*cos')

%% D3) Krivky zo stlpcov matice
figure
x = linspace(0, 2*pi, 200);
x = x(:);                        % stlpcovy vektor
Y = [sin(x), sin(2*x), sin(3*x)];
size(Y)
plot(x, Y)
legend('sin(x)', 'sin(2x)', 'sin(3x)')

%% D4) subplot 2x2 so spolocnym nadpisom
figure
x = linspace(0, 2*pi, 200);
subplot(2, 2, 1); plot(x, sin(x));      title('sin(x)')
subplot(2, 2, 2); plot(x, cos(x));      title('cos(x)')
subplot(2, 2, 3); plot(x, x.^2);        title('x^2')
subplot(2, 2, 4); plot(x, exp(-x));     title('e^{-x}')
sgtitle('Styri funkcie')

%% D5) subplot cez viac policok
figure
x = linspace(0, 4*pi, 400);
subplot(2, 2, [1 2])
plot(x, sin(x).*exp(-x/6))
title('policka 1 a 2 spolu')
subplot(2, 2, 3)
plot(x, sin(x))
title('policko 3')
subplot(2, 2, 4)
plot(x, exp(-x/6))
title('policko 4')

%% D6) tiledlayout
figure
x = linspace(0, 2*pi, 200);
tl = tiledlayout(2, 3, 'TileSpacing', 'compact', 'Padding', 'compact');
for k = 1:6
    nexttile
    plot(x, sin(k*x))
    title(sprintf('sin(%dx)', k))
end
title(tl, 'Sest grafov cez tiledlayout')
xlabel(tl, 'x')
ylabel(tl, 'y')

%% D7) Viac okien
figure(1)
plot(1:10, (1:10).^2)
title('okno 1')

figure(2)
set(gcf, 'Name', 'Moje druhe okno', 'Color', 'w')
plot(1:10, sqrt(1:10))
title('okno 2')

figure(1)                 % prepnem spat na okno 1
hold on
plot(1:10, 10*(1:10))
hold off
cisloOkna = get(gcf, 'Number')

%% E1) bar, barh, skupiny a skladanie
figure
znamky = [4 9 8 5 2];
skupiny = [4 3; 9 7; 8 9; 5 6; 2 3];

subplot(2, 2, 1); bar(znamky);               title('bar')
subplot(2, 2, 2); barh(znamky);              title('barh')
subplot(2, 2, 3); bar(skupiny);              title('bar - skupiny')
subplot(2, 2, 4); bar(skupiny, 'stacked');   title('bar - stacked')

%% E2) stem
figure
n = 0:20;
x = 0.8.^n;
stem(n, x, 'filled')
xlabel('n')
ylabel('x[n]')
title('x[n] = 0.8^n')

%% E3) stairs - schodiskovy graf
figure
n = 0:10;
signal = [0 1 1 0 1 0 0 1 1 1 0];
stairs(n, signal, 'LineWidth', 2)
ylim([-0.2 1.2])
title('Digitalny signal')

%% E4) scatter
rng(1)
figure
x = randn(1, 200);
y = x + 0.5*randn(1, 200);
velkost = 10 + 60*rand(1, 200);
scatter(x, y, velkost, y, 'filled', 'MarkerFaceAlpha', 0.6)
colorbar
xlabel('x'); ylabel('y')

%% E5) histogram
rng(2)
figure
data = randn(1, 1000);
subplot(1, 3, 1); histogram(data, 20);                                 title('20 intervalov')
subplot(1, 3, 2); histogram(data, 'BinWidth', 0.1);                    title('BinWidth 0.1')
subplot(1, 3, 3); histogram(data, 20, 'Normalization', 'probability'); title('pravdepodobnost')

%% E6) pie a area
figure
subplot(1, 2, 1)
podiely = [45 25 20 10];
pie(podiely, {'Python', 'C', 'MATLAB', 'HTML'})
title('Oblubeny jazyk')

subplot(1, 2, 2)
mesiace = 1:12;
spotreba = [310 295 270 240 215 190 185 200 225 260 290 320];
area(mesiace, spotreba, 'FaceAlpha', 0.4)
xlim([1 12])
title('Spotreba [kWh]')

%% E7) errorbar
figure
napatie   = [1 2 3 4 5];
prud      = [0.21 0.39 0.62 0.79 1.02];
neistota  = [0.03 0.03 0.04 0.05 0.05];
errorbar(napatie, prud, neistota, 'o', 'MarkerFaceColor', 'b')
xlabel('U [V]'); ylabel('I [A]')
xlim([0.5 5.5])
grid on
title('Meranie s neistotou')

%% E8) polarplot
figure
theta = linspace(0, 2*pi, 400);
r = abs(cos(2*theta));
polarplot(theta, r, 'LineWidth', 1.5)
title('r = |cos(2\theta)|')

%% F1) Nabijanie kondenzatora
figure
U = 12;  C = 100e-6;  R = [10e3 22e3 47e3];
t = linspace(0, 15, 500);
hold on
for k = 1:3
    tau = R(k) * C;
    plot(t, U*(1 - exp(-t/tau)), 'LineWidth', 1.5, ...
        'DisplayName', sprintf('R = %g kOhm', R(k)/1000))
end
tau1 = R(1) * C;
plot(tau1, U*(1 - exp(-1)), 'ko', 'MarkerFaceColor', 'k', 'HandleVisibility', 'off')
text(tau1 + 0.3, U*(1 - exp(-1)) - 0.6, '63 % pri t = \tau')
yline(U, '--', 'U = 12 V', 'HandleVisibility', 'off')
hold off
xlabel('t [s]'); ylabel('u_C [V]')
legend('Location', 'southeast')
ylim([0 13.5])

%% F2) Skladanie obdlznika z harmonickych
figure
t = linspace(0, 0.04, 2000);
pocty = [1 3 7 21];
tiledlayout(2, 2, 'TileSpacing', 'compact')
for p = pocty
    y = zeros(size(t));
    for k = 1:2:p
        y = y + 4/pi * sin(2*pi*50*k*t) / k;
    end
    nexttile
    plot(t*1000, y)
    title(sprintf('harmonicke do %d.', p))
    ylim([-1.5 1.5])
end

%% F3) Usmerneny sinus - spojito a navzorkovane
figure
t  = linspace(0, 0.04, 1000);
tn = 0:0.001:0.04;
subplot(2, 1, 1)
plot(t*1000, abs(325*sin(2*pi*50*t)))
title('dvojcestne usmernenie')
subplot(2, 1, 2)
stem(tn*1000, abs(325*sin(2*pi*50*tn)), 'filled', 'MarkerSize', 3)
title('vzorky kazdu 1 ms')
xlabel('t [ms]')

%% F4) Napatie a prud - dve osi y
figure
t = linspace(0, 0.04, 1000);
u = 325 * sin(2*pi*50*t);
i = 5 * sin(2*pi*50*t - pi/4);
yyaxis left
plot(t*1000, u)
ylabel('u [V]')
yyaxis right
plot(t*1000, i)
ylabel('i [A]')
xlabel('t [ms]')
title('Prud sa oneskoruje o 45 stupnov')
grid on

%% F5) VA charakteristika diody
figure
Is = 1e-12;  n = 1.5;  UT = 0.02585;
U = linspace(0, 0.8, 400);
I = Is * (exp(U/(n*UT)) - 1);
subplot(1, 2, 1)
plot(U, I*1000, 'LineWidth', 1.5)
xlabel('U [V]'); ylabel('I [mA]')
title('linearna os')
grid on
subplot(1, 2, 2)
semilogy(U, I, 'LineWidth', 1.5)
xlabel('U [V]'); ylabel('I [A]')
title('semilogy - exponenciala je priamka')
grid on

%% F6) fplot - graf funkcie bez vektora x
figure
f = @(x) sin(x) ./ x;
fplot(f, [-20 20], 'LineWidth', 1.5)
title('sin(x)/x')
grid on

%% G1) plot3 - skrutkovica
figure
t = linspace(0, 6*pi, 600);
plot3(cos(t), sin(t), t, 'LineWidth', 2)
xlabel('x'); ylabel('y'); zlabel('z')
grid on

%% G2) Ako funguje meshgrid
[X, Y] = meshgrid(1:3, 1:4)
% X ma v kazdom riadku 1 2 3, Y ma v kazdom stlpci 1 2 3 4.
% Dvojica (X(i,j), Y(i,j)) prejde vsetkych 12 bodov mriezky.

%% G3) Sombrero cez surf
figure
[X, Y] = meshgrid(linspace(-8, 8, 60));
R = sqrt(X.^2 + Y.^2) + eps;     % eps zabrani deleniu nulou
Z = sin(R) ./ R;
surf(X, Y, Z)
colorbar
title('sin(r)/r')

%% G4) mesh, surf, contour
figure
[X, Y] = meshgrid(linspace(-2, 2, 40));
Z = X .* exp(-X.^2 - Y.^2);
subplot(1, 3, 1); mesh(X, Y, Z);        title('mesh')
subplot(1, 3, 2); surf(X, Y, Z);        title('surf')
subplot(1, 3, 3); contour(X, Y, Z, 15); title('contour'); axis equal

%% G5) shading, colormap a view
figure
[X, Y] = meshgrid(linspace(-2, 2, 50));
Z = X .* exp(-X.^2 - Y.^2);
subplot(1, 2, 1)
surf(X, Y, Z)
shading interp
colormap(gca, hot)
title('shading interp, hot')
subplot(1, 2, 2)
surf(X, Y, Z)
shading interp
view(2)                       % pohlad zhora
colorbar
title('view(2)')

%% H1) Ulozenie grafu do suboru
figure
x = linspace(0, 2*pi, 200);
plot(x, sin(x), 'LineWidth', 1.5)
title('Graf na ulozenie')
exportgraphics(gcf, 'moj_graf.png', 'Resolution', 300)
exportgraphics(gcf, 'moj_graf.pdf', 'ContentType', 'vector')
saveas(gcf, 'moj_graf_saveas.png')
subory = dir('moj_graf*');
for k = 1:numel(subory)
    fprintf('%-22s %7.1f kB\n', subory(k).name, subory(k).bytes/1024);
end

%% I1) Bonus - prehlad merania teploty
rng(3)
figure
t = 0:0.25:23.75;                                  % 96 merani, kazdych 15 minut
T = 15 + 7*sin(2*pi*(t - 9)/24) + 0.8*randn(size(t));

tl = tiledlayout(2, 2, 'TileSpacing', 'compact');

nexttile
plot(t, T)
[Tmax, imax] = max(T);
[Tmin, imin] = min(T);
hold on
plot(t(imax), Tmax, 'r^', 'MarkerFaceColor', 'r')
plot(t(imin), Tmin, 'bv', 'MarkerFaceColor', 'b')
hold off
xlabel('cas [h]'); ylabel(['T [' char(176) 'C]'])   % char(176) je znak stupna
title(sprintf('max %.1f, min %.1f', Tmax, Tmin))
xlim([0 24])

nexttile
histogram(T, 15)
xlabel(['T [' char(176) 'C]']); title('rozdelenie')

nexttile
hodinove = mean(reshape(T, 4, 24));                % 4 merania za hodinu
bar(0:23, hodinove)
xlabel('hodina'); title('hodinove priemery')

nexttile
odchylka = T - mean(T);
stem(t, odchylka, 'filled', 'MarkerSize', 2)
xlabel('cas [h]'); title('odchylka od priemeru')
xlim([0 24])

title(tl, 'Meranie teploty za 24 hodin')
