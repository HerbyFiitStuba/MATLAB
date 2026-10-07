function tabulkaNasobenia(n)
%TABULKANASOBENIA Vypise nasobilku n x n.
%   Funkcia nic nevracia - iba vypisuje. Preto nema vystupnu premennu.
%   Ukazka vnoreneho cyklu a formatovaneho vypisu.
%
%   Priklad:
%       tabulkaNasobenia(5)

    for i = 1:n
        for j = 1:n
            fprintf('%5d', i*j);
        end
        fprintf('\n');
    end
end
