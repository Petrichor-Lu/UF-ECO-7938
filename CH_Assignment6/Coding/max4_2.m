function [f,g,H] = max4_2(I)
K = I(1);
L = I(2);

f = 3 * K^(0.2) * L^(0.4) - 2*K - L;
f = -f;                                         % since max

% Supply the Gradient
%--------------------------------------------------------------------------
if nargout > 1                                  % nargout: Number of output arguments
    g = [0.6*K^(-0.8)*L^(0.4)-2;
         1.2*K^(0.2)*L^(-0.6)-1];
    g = -g;                                     % since max
end

% Supply the Hessian
%--------------------------------------------------------------------------
if nargout > 2 
H = [-0.8*0.6*K^(-1.8)*L^0.4, 0.6*0.4*K^(-0.8)*L^(-0.6); 0.2*1.2*K^(-0.8)*L^(-0.6), -1.2*0.6*K^0.2*L^(-1.6)];
H = -H;                                         % since max
end

end