1{ target(X,Y,X2,Y2) : area(X2,Y2,_), (X-X2)*(Y-Y2)=0 }1 :- number(X,Y,_).
% achieved: each block is moved to some cell in a gray area

:- area(_,_,A), not 1{ target(_,_,X,Y) : area(X,Y,A) }.
% achieved: at least one block is moved to some cell in each gray area

traverses(X,Y,XL..XH,YL..YH) :- target(X,Y,X2,Y2), 
                                XH = #max{X; X2}, YH = #max{Y; Y2}, 
                                XL = #min{X; X2}, YL = #min{Y; Y2}.
% achieved: traverses(X,Y,X2,Y2) iff block initiall at (X,Y) traverses (X2,Y2)

:- traverses(X1,Y1,X,Y), traverses(X2,Y2,X,Y), (X1,Y1) != (X2,Y2).
% achieved: no cell is traversed by two different blocks

#show target/4.