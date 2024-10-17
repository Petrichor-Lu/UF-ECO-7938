%%%%%%%%%%%%%%%%%%%%
%   Assignment 5   %
% Apart II and III %
%%%%%%%%%%%%%%%%%%%%

clear               % Empty the Workspace
clc                 % Clear the Screen
format compact      % compact format

%%%2 Loops in Matlab (40 points)

%%1. Compute 
sum1 = 0;                        %initial sum = 0
for i = 1:100                    %set up the loop
    sum1 = sum1 + 1/sqrt(i);
end
sum1                             %output
% the sum = 18.5896

%%2. Compute
sum2 = 0;                            %initial sum = 0
for i = 1:20                         %set up the double loops
    for j = 1 : 20
        if i > j
            sum2 = sum2 + (i - j)^2;
        end
    end
end
sum2                                  %output
% sum2 = 13300


%%3. Compute
e = 0;                                %initial sum = 0
for n = 1:100                         %set up the loop
    e = e + (1/factorial(n));
end
e                                     %output
% e = 1.7183


%%4. Create the following 10-by-10 matrix
M = 5 * ones(10,10) ;                  %build up a 10*10 metrix with 5
for i = 1:length(M);                   %set up double loops
    for j = 1:length(M)
        if  i == j;
            M(i,j) = 0;                %make the elements in principal diagonal = 0
        end
    end
end
M                                      %output


%%5. Create two matrices Y and X and compute
X = randi(10,20,40);                      % creat the random (1,20) metrix X:20*40
Y = randi(10,20,1);                       % creat the random (1,20) metrix Y:20*1
beta = (X' * X) \ (X' * Y);               %calculate the beta
epsilon = Y - X*beta;                     %calculate the epsilon
beta
epsilon


%%%3 Functions in Matlab (25 points)

%%1. Write a function that takes two matrices, A and B, as input and returns 2 arguments:
%(1) y = 1 if matrix A has more rows than matrix B and y = 0 otherwise
%(2) z = 1 if matrix A has more columns than matrix B and z = 0 otherwise
[Y,Z] = compare(X,Y)
%Please check the compare.m

%%2. Suppose you have two vectors, x and y, each with 3 distinct elements. 
%Write a function that returns the number of elements that x and y have in common 
%(e.g. if the vectors are c(1,2,3) and c(3,6,2), it should return 2).

%Please check the number_com.m


%%3. Write a function that returns the largest value of an n n matrix 
% if n is an even number and the minimum otherwise.
%Please check the maxormin.m
A = randi(20,40,40);
z = maxormin(A);
z