sudoku(R11,R12,R13,R14,R21,R22,R23,R24,R31,R32,R33,R34,R41,R42,R43,R44) :-
    solution(R11,R12,R13,R14,R21,R22,R23,R24,R31,R32,R33,R34,R41,R42,R43,R44),

nl, write('A solutiont o this puzzle is'), nl,
printrow(R11,R12,R13,R14), printrow(R21,R22,R23,R24),
printrow(R31,R32,R33,R34), printrow(R41,R42,R43,R44).


printrow(P,Q,R,S) :- write('  '), write(P), write(' '), write(Q), write(' '),
    write(R), write(' '), write(S), nl.


num(1).
num(2).
num(3).
num(4).

unique(A,B,C,D) :-
    num(A) , num(B), \+ A=B,
    num(C), \+ A=C, \+ B=C,
    num(D), \+ A=D, \+ B=D, \+ C=D.

solution(R11,R12,R13,R14,R21,R22,R23,R24,R31,R32,R33,R34,R41,R42,R43,R44) :-
    % Rows
    unique(R11,R12,R13,R14),
    unique(R21,R22,R23,R24),
    unique(R31,R32,R33,R34),
    unique(R41,R42,R43,R44),

    % Columns
    unique(R11,R21,R31,R41),
    unique(R12,R22,R32,R42),
    unique(R13,R23,R33,R43),
    unique(R14,R24,R34,R44),

    % Blocks
    unique(R11,R12,R21,R22),
    unique(R13,R14,R23,R24),
    unique(R31,R32,R41,R42),
    unique(R33,R34,R43,R44).
