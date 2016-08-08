%===============================================================================
%	A-law
%===============================================================================

%--- The Compression Parameter
u=255;
dem=log(1+u);



% in=-2^13/2^13:1/2^13:(2^13-1)/2^13;
in=0.5

y = u_law(in);


%+++	s=sign(in);

%+++	y=log(1+u*abs(in))/dem*diag(s);

plot(in, y)
title('u-law Encode')
xlabel('input')
ylabel('output')

