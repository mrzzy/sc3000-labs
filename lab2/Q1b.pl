%facts
company(sumsum).
company(appy).
competitor(sumsum,appy). 
developer(sumsum,galacticas3). 
boss(stevey,appy).
business(galacticas3). %smartphone_tech_is_business
steal(stevey,galacticas3).


%rules
rival(X,Y):- competitor(X,Y).
unethical(S):-
    boss(S,Y),
    steal(S,Z),
    business(Z),
    competitor(X,Y),
    developer(X,Z).
