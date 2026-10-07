function z = znamkaZBodov(body)
%ZNAMKAZBODOV Prevedie body na znamku podla stupnice.
%   90 a viac -> 1,  75-89 -> 2,  60-74 -> 3,  45-59 -> 4,  menej -> 5
%
%   Priklad:
%       znamkaZBodov(83)   % vrati 2

    if body >= 90
        z = 1;
    elseif body >= 75
        z = 2;
    elseif body >= 60
        z = 3;
    elseif body >= 45
        z = 4;
    else
        z = 5;
    end
end
