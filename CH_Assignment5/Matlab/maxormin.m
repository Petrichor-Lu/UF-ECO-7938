%%%Function 3.3

function [z] = maxormin(m)             % set up the function
x = size(m,1);                         % only need the number of rows
if mod(x, 2) == 0                      % if x is even
    z = max(m(:));                     % z is the maximum
else
    z = min(m(:));                     % otherwise z si the minimum
end
end