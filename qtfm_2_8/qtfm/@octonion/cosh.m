function Y = cosh(X)
% COSH   Hyperbolic cosine.
% (Octonion overloading of standard Matlab function.)

% Copyright (c) 2006 Stephen J. Sangwine and Nicolas Le Bihan.
% See the file : Copyright.m for further details.

narginchk(1, 1), nargoutchk(0, 1)

if isreal(X)
    
    % X is a real octonion, and we compute the hyperbolic cosine of an
    % isomorphic complex number using the standard Matlab cosh function,
    % then construct an octonion with the same axis as the original
    % octonion.
    
    Y = isooctonion(cosh(isocomplex(X)), X);
else
    
    % X is a complex octonion, and therefore we cannot use the method
    % above for real octonions, because it is not possible to construct
    % an isomorphic complex number. We use instead a fundamental formula
    % for the hyperbolic cosine.
    
    Y = (exp(X) + exp(-X)) ./ 2;
end

% $Id: cosh.m 1053 2020-02-17 18:13:03Z sangwine $

% Created automatically from the quaternion
% function of the same name on 17-Feb-2020.