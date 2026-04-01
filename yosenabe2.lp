1{ target(X,Y,X2,Y2) : area(X2,Y2,_), (X-X2)*(Y-Y2)=0 }1 :- number(X,Y,_).
% achieved: each block is moved to some cell in a gray area

:- area(_,_,A), not 1{ target(_,_,X,Y) : area(X,Y,A) }.
% achieved: at least one block is moved to some cell in each gray area

#show target/4.