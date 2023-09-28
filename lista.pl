%base
imp(L) :- L=[], !.

%passo
imp(L) :- L=[A|Resto], format('~w', [A]), imp(Resto).

impinv(L) :- L=[], !.

impinv(L) :- L=[A|Resto], impinv(Resto), format('~w~n', [A]).

somar([A], Soma)) :- Soma=A.

somar(L, S) :- L=[A|R], somar(R, Aux), S is A+Aux.%esta com erros