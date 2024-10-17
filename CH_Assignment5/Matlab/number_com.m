%%%function 3.2

function [z] = number_com(x,y)            % set up the function
z = 0                                     %initial z = 0
x_flat = x(:);                            %not necessary in this case: make the merix to be a vector
y_flat = y(:);
for i = 1:length(x_flat)                  %build up double loops
    for j = 1:length(y_flat)
        if x_flat(i) == y_flat(j)
            z = z + 1;                    %count the number of same elements
        end
    end
end
end