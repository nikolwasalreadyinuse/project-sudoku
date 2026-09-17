% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
:- initial(Row, Col1, Value), initial(Row, Col2, Value), Col1 != Col2.
%achieved: No two rows can have the same number.

#show sudoku/3.
