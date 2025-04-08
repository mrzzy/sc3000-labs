%facts
company(sumsum).
company(appy).
competitor(sumsum,appy). %sumsum_competitor_of_appy
smartphoneTech(galacticas3). %smartphone_tech_is_business
businessOf(galacticas3,sumsum).
developer(sumsum,galacticas3). %sumsum_developed_galacticas3
boss(stevey,appy). %stevey_boss_of_appy
steal(stevey,galacticas3). %stevey_stole_galacticas3


%rules
rival(X,Y):- competitor(X,Y).
rival(X, Y) :- competitor(Y, X).
business(Z) :- smartphoneTech(Z).

unethical(S):-
    boss(S,Y),
    steal(S,Z),
    businessOf(Z,X),
    rival(Y,X).
