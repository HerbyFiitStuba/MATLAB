function [priemer, minimum, maximum] = statistiky(v)
%STATISTIKY Vrati priemer, minimum a maximum vektora.
%   [p, mi, ma] = STATISTIKY(v) vrati tri hodnoty naraz.
%   Ak nas zaujima len prvy vystup, staci p = STATISTIKY(v).
%
%   Priklad:
%       [p, mi, ma] = statistiky([4 8 15 16 23 42])

    priemer = mean(v);
    minimum = min(v);
    maximum = max(v);
end
