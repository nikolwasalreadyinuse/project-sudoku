% Sudoku Solver - Question 2

% Initial clues must not contain duplicate values
% in the same row or column.
:- initial(Row, Col1, Value),
   initial(Row, Col2, Value),
   Col1 != Col2.

:- initial(Row1, Col, Value),
   initial(Row2, Col, Value),
   Row1 != Row2.

% Include the initial clues in the solution.
sudoku(Row, Col, Value) :-
    initial(Row, Col, Value).

% Generate exactly one value between 1 and 9
% for every cell in the 9x9 board.
1 { sudoku(Row, Col, Value) : Value = 1..9 } 1 :-
    Row = 1..9,
    Col = 1..9.

% Each cell must contain only one distinct value.
:- sudoku(Row, Col, Value1),
   sudoku(Row, Col, Value2),
   Value1 != Value2.

% No repeated values in any row.
:- sudoku(Row, Col1, Value),
   sudoku(Row, Col2, Value),
   Col1 != Col2.

% No repeated values in any column.
:- sudoku(Row1, Col, Value),
   sudoku(Row2, Col, Value),
   Row1 != Row2.

% Assign each cell to its 3x3 subgrid.
subgrid(Row, Col, Group) :-
    Row = 1..9,
    Col = 1..9,
    Group = 1 + ((Row - 1) / 3) * 3 + ((Col - 1) / 3).

%exactly one cell may have the same subgrid and value. (a number can't appear twice in the same 3x3 subgrid).
1 { sudoku(Row, Col, Value) : subgrid(Row, Col, Group) } 1 :- Value = 1..9, Group = 1..9.

#show sudoku/3.

