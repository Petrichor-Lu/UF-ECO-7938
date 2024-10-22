function F = max4_4(I)

K = I(1);                         % Define K as first element of I
L = I(2);                         % Define L as second element of I

F = [0.2*3*K^(-0.8)*L^(0.4) - exp(K+L); 0.4*3*K^(0.2)*L^(-0.6) - exp(K+L)]      
                                  % Compute the function values for the given K,L
disp([K,L])
end
