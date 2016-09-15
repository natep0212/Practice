sudoku(R11,R12,R13,R14,R15,R16,R17,R18,R19,R21,R22,R23,R24,R25,R26,R27,R28,R29,
        R31,R32,R33,R34,R35,R36,R37,R38,R39,R41,R42,R43,R44,R45,R46,R47,R48,R49,
        R51,R52,R53,R54,R55,R56,R57,R58,R59,R61,R62,R63,R64,R65,R66,R67,R68,R69,
        R71,R72,R73,R74,R75,R76,R77,R78,R79,R81,R82,R83,R84,R85,R86,R87,R88,R89,
        R91,R92,R93,R94,R95,R96,R97,R98,R99) :-
solution(R11,R12,R13,R14,R15,R16,R17,R18,R19,R21,R22,R23,R24,R25,R26,R27,R28,R29,
        R31,R32,R33,R34,R35,R36,R37,R38,R39,R41,R42,R43,R44,R45,R46,R47,R48,R49,
        R51,R52,R53,R54,R55,R56,R57,R58,R59,R61,R62,R63,R64,R65,R66,R67,R68,R69,
        R71,R72,R73,R74,R75,R76,R77,R78,R79,R81,R82,R83,R84,R85,R86,R87,R88,R89,
        R91,R92,R93,R94,R95,R96,R97,R98,R99),


nl, write('A solutiont o this puzzle is'), nl,
printrow(R11,R12,R13,R14,R15,R16,R17,R18,R19),
printrow(R21,R22,R23,R24,R25,R26,R27,R28,R29),
printrow(R31,R32,R33,R34,R35,R36,R37,R38,R39),
printrow(R41,R42,R43,R44,R45,R46,R47,R48,R49),
printrow(R51,R52,R53,R54,R55,R56,R57,R58,R59),
printrow(R61,R62,R63,R64,R65,R66,R67,R68,R69),
printrow(R71,R72,R73,R74,R75,R76,R77,R78,R79),
printrow(R81,R82,R83,R84,R85,R86,R87,R88,R89),
printrow(R91,R92,R93,R94,R95,R96,R97,R98,R99).


printrow(P,Q,R,S,T,U,V,W,X) :- write('  '), write(P), write(' '), write(Q), write(' '),
    write(R), write(' '), write(S), write(' '), write(T), write(' '), write(U), write(' '),
    write(V), write(' '), write(W), write(' '), write(X), nl.


num(1).
num(2).
num(3).
num(4).
num(5).
num(6).
num(7).
num(8).
num(9).

unique(A,B,C,D,E,F,G,H,I) :-
    num(A) , num(B), \+ A=B,
    num(C), \+ A=C, \+ B=C,
    num(D), \+ A=D, \+ B=D, \+ C=D,
    num(E), \+ A=E, \+ B=E, \+ C=E, \+ D=E,
    num(F), \+ A=F, \+ B=F, \+ C=F, \+ D=F, \+ E=F,
    num(G), \+ A=G, \+ B=G, \+ C=G, \+ D=G, \+ E=G, \+ F=G,
    num(H), \+ A=H, \+ B=H, \+ C=H, \+ D=H, \+ E=H, \+ F=H, \+ G=H,
    num(I), \+ A=I, \+ B=I, \+ C=I, \+ D=I, \+ E=I, \+ F=I, \+ G=I, \+ H=I.

solution(R11,R12,R13,R14,R15,R16,R17,R18,R19,R21,R22,R23,R24,R25,R26,R27,R28,R29,
        R31,R32,R33,R34,R35,R36,R37,R38,R39,R41,R42,R43,R44,R45,R46,R47,R48,R49,
        R51,R52,R53,R54,R55,R56,R57,R58,R59,R61,R62,R63,R64,R65,R66,R67,R68,R69,
        R71,R72,R73,R74,R75,R76,R77,R78,R79,R81,R82,R83,R84,R85,R86,R87,R88,R89,
        R91,R92,R93,R94,R95,R96,R97,R98,R99) :-
    % Rows
    row1(R11,R12,R13,R14,R15,R16,R17,R18,R19),
    row2(R21,R22,R23,R24,R25,R26,R27,R28,R29),
    row3(R31,R32,R33,R34,R35,R36,R37,R38,R39),
    row4(R41,R42,R43,R44,R45,R46,R47,R48,R49),
    row5(R51,R52,R53,R54,R55,R56,R57,R58,R59),
    row6(R61,R62,R63,R64,R65,R66,R67,R68,R69),
    row7(R71,R72,R73,R74,R75,R76,R77,R78,R79),
    row8(R81,R82,R83,R84,R85,R86,R87,R88,R89),
    row9(R91,R92,R93,R94,R95,R96,R97,R98,R99),

    % Columns
    column1(R11,R21,R31,R41,R51,R61,R71,R81,R91),
    column2(R12,R22,R32,R42,R52,R62,R72,R82,R92),
    column3(R13,R23,R33,R43,R53,R63,R73,R83,R93),
    column4(R14,R24,R34,R44,R54,R64,R74,R84,R94),
    column5(R15,R25,R35,R45,R55,R65,R75,R85,R95),
    column6(R16,R26,R36,R46,R56,R66,R76,R86,R96),
    column7(R17,R27,R37,R47,R57,R67,R77,R87,R97),
    column8(R18,R28,R38,R48,R58,R68,R78,R88,R98),
    column9(R19,R29,R39,R49,R59,R69,R79,R89,R99),

    % Blocks
    block1(R11,R12,R13,R21,R22,R23,R31,R32,R33),
    block2(R14,R15,R16,R24,R25,R26,R34,R35,R36),
    block3(R17,R18,R19,R27,R28,R29,R37,R38,R39),
    block4(R41,R42,R43,R51,R52,R52,R61,R62,R63),
    block5(R44,R45,R46,R54,R55,R56,R64,R65,R66),
    block6(R47,R48,R49,R57,R58,R59,R67,R68,R69),
    block7(R71,R72,R73,R81,R82,R83,R91,R92,R93),
    block8(R74,R75,R76,R84,R85,R86,R94,R95,R96),
    block9(R77,R78,R79,R87,R88,R89,R97,R98,R99),

    board(row1,row2,row3,row4,row5,row6,row7,row8,row9,
        column1,column2,column3,column4,column5,column6,column7,column8,column9,
        block1,block2,block3,block4,block5,block6,block7,block8,block8,block9).
