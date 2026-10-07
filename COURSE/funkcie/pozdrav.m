function pozdrav(meno, cas)
%POZDRAV Pozdravi zadane meno, volitelne podla dennej doby.
%   POZDRAV(meno) pouzije vseobecny pozdrav.
%   POZDRAV(meno, cas) pozdravi podla dennej doby ('rano','obed','vecer').
%
%   Ukazka VOLITELNEHO argumentu pomocou nargin - nargin hovori,
%   kolko argumentov bolo pri volani skutocne zadanych.
%
%   Priklad:
%       pozdrav('Jana')
%       pozdrav('Jana', 'rano')

    if nargin < 2               % zadany bol len jeden argument
        cas = 'neznamy';
    end

    switch cas
        case 'rano'
            uvod = 'Dobre rano';
        case 'obed'
            uvod = 'Dobry den';
        case 'vecer'
            uvod = 'Dobry vecer';
        otherwise
            uvod = 'Ahoj';
    end

    fprintf('%s, %s!\n', uvod, meno);
end
