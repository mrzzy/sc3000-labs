%
% SC30000
% Lab Assignment 2
% Exercise 2a): The Royal Family
%

% knowledge base
% define gender facts
female(elizabeth).
female(ann).
male(charles).
male(andrew).
male(edward).

% define offspring facts
offspring(elizabeth,charles).
offspring(elizabeth,ann).
offspring(elizabeth,andrew).
offspring(elizabeth,edward).


% inference rules
% sucession rule: male first, female second
successor(X, Y) :- male(Y), offspring(X, Y).
successor(X, Y) :- female(Y), offspring(X, Y).
