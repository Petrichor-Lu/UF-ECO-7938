%%%Function 3.1

function [Y,Z] = compare(A,B)             % set up the function
    if  size(A,1) > size(B,1)             % if number of rows of A is bigger
        Y = 1;
    else 
        Y = 0;
    end
    if  size(A,2) > size(B,2)             % if number of columns of A is bigger
        Z = 1;
    else
        Z = 0;
    end
end
