% Facts - Male
male(mohammed).
male(ahmad).
male(khaled).
male(abdullah).

% Facts - Female
female(amal).
female(sara).
female(lama).

% Facts - Parent
parent(mohammed, ahmad).
parent(mohammed, amal).

parent(ahmad, sara).
parent(ahmad, abdullah).

parent(amal, lama).
parent(khaled, lama).

% Rules
father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
brother(X, Y) :- parent(Z, X), parent(Z, Y), male(X), X \= Y.
sister(X, Y) :- parent(Z, X), parent(Z, Y), female(X), X \= Y.