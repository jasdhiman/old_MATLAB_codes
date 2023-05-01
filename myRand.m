% function to create a 3x4 matrix of random numbers between 2 user defined numbers and their sum

function [a, s]=myRand(low,high)
a=low+rand(3,4)*(high-low);
s=sumofall(a);

function summa=sumofall(M)
v=M(:);
summa=sum(v);
