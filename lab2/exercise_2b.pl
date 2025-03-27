%
% SC30000
% Lab Assignment 2
% Exercise 2b): The Royal Family
%

% knowledge base

% define offspring facts
offspring(elizabeth,charles).
offspring(elizabeth,ann).
offspring(elizabeth,andrew).
offspring(elizabeth,edward).

% inference rules
% sucession rule: male first, female second
successor(X, Y) :- offspring(X, Y).
