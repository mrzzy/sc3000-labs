%facts
company(sumsum).
company(appy).
competitor(sumsum,appy). %sumsum_competitor_of_appy
developer(sumsum,galacticas3). %sumsum_developed_galacticas3
boss(stevey,appy). %stevey_boss_of_appy
business(galacticas3). %smartphone_tech_is_business
steal(stevey,galacticas3). %stevey_stole_galacticas3


%rules
rival(X,Y):- competitor(X,Y).
unethical(S):-
    boss(S,Y),
    steal(S,Z),
    business(Z),
    competitor(X,Y),
    developer(X,Z).
