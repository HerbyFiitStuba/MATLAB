function S = obsahKruhu(r)
%OBSAHKRUHU Vypocita obsah kruhu s polomerom r.
%   S = OBSAHKRUHU(r) vrati obsah kruhu podla vzorca S = pi*r^2.
%
%   Priklad:
%       obsahKruhu(3)         % vrati 28.2743
%       obsahKruhu([1 2 3])   % funguje aj na cely vektor
%
%   Vsimni si BODKU v .^ - vdaka prvkovej mocnine funguje funkcia
%   nielen pre jedno cislo, ale aj pre cely vektor polomerov naraz.
%   S maticovou mocninou r^2 by volanie s vektorom skoncilo chybou.

    S = pi * r.^2;
end
