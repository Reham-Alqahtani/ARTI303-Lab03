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

father(Father, Child) :-
    male(Father),
    parent(Father, Child).

mother(Mother, Child) :-
    female(Mother),
    parent(Mother, Child).

sister(Sister, Person) :-
    female(Sister),
    parent(Parent, Sister),
    parent(Parent, Person),
    Sister \= Person.

brother(Brother, Person) :-
    male(Brother),
    parent(Parent, Brother),
    parent(Parent, Person),
    Brother \= Person.
