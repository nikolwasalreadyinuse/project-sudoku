% Sudoku Solver - Question 1a

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

% Generate exactly one value between 1 and 4
% for every cell in the 4x4 board.
1 { sudoku(Row, Col, Value) : Value = 1..4 } 1 :-
    Row = 1..4,
    Col = 1..4.

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

#show sudoku/3.
