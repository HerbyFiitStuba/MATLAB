function [fahrenheit, kelvin] = prevedTeplotu(celzius)
%PREVEDTEPLOTU Prevedie stupne Celzia na Fahrenheita a Kelvina.
%   [F, K] = PREVEDTEPLOTU(C) vrati obe hodnoty naraz.
%   Funguje aj na cely vektor teplot.
%
%   Priklad:
%       [f, k] = prevedTeplotu(25)
%       prevedTeplotu([0 100])

    fahrenheit = celzius * 9/5 + 32;
    kelvin = celzius + 273.15;
end
