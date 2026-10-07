function f = faktorial(n)
%FAKTORIAL Vypocita faktorial cisla n pomocou rekurzie.
%   Funkcia vola samu seba, kym sa nedostane k n = 0.
%   Toto sa vola REKURZIA.
%
%   Priklad:
%       faktorial(5)   % vrati 120

    if n < 0
        error('Faktorial nie je definovany pre zaporne cisla.');
    end

    if n <= 1
        f = 1;              % zastavovacia podmienka rekurzie
    else
        f = n * faktorial(n - 1);
    end
end
