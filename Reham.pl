male(saeed).
male(ibrahim).
male(badr).
male(ziyad).
male(alwaleed).

female(zahra).
female(mona).
female(salha).
female(reham).
female(raghad).

parent(saeed, ibrahim).
parent(zahra, ibrahim).
parent(saeed, badr).
parent(zahra, badr).
parent(saeed, mona).
parent(zahra, mona).
parent(saeed, salha).
parent(zahra, salha).

parent(ibrahim, ziyad).
parent(ibrahim, alwaleed).
parent(ibrahim, reham).
parent(ibrahim, raghad).




father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
sister(X, Y) :- female(X), parent(P, X), parent(P, Y), X \= Y.
brother(X, Y) :- male(X), parent(P, X), parent(P, Y), X \= Y.




