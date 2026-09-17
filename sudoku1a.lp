% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
:- initial(Row, Col1, Value), initial(Row, Col2, Value), Col1 != Col2.
%achieved: No row can contain the same number twice
:- initial(Row1, Col, Value), initial(Row2, Col, Value), Row1 != Row2.
%achieved: No row can contain the same number twice

sudoku(Row, Col, Value) :- initial(Row, Col, Value).
%Achieved: Fill out the board with the initial values.

% 1 { ... } 1 = pick between one and one item of this type

1 { sudoku(Row, Col, Value)  : Value = 1..4} 1 :- Row = 1..4, Col = 1..4.

%achieved: Generate the rest of the values for the board.

:- sudoku(Row, Col1, Value), sudoku(Row, Col2, Value), Col1 != Col2.
%achieved: No row can contain the same number twice
:- sudoku(Row1, Col, Value), sudoku(Row2, Col, Value), Row1 != Row2.
%achieved: No row can contain the same number twice





#show sudoku/3.
