%===============================================================================
%	u-law: 
%			shoichi_ikeda@icom.co.jp
%===============================================================================

%------------------------------------------------------------------------------
%   parameter
%       x: input value, must be -1.0 <= x <= 1.0
%   return
%       y: compressed value, -1.0 <= y <= 1.0
%------------------------------------------------------------------------------
function y = u_law(x)
	u=255;  %--- The Compression Parameter
%    y = sign(x)*log(1+u*abs(x))/log(1+u);
    s = sign(x);
    sd = spdiags(s, 0, numel(s), numel(s));
    y = log(1+u*abs(x))/log(1+u)*sd;
end

   
