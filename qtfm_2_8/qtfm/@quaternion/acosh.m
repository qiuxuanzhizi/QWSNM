function Y = acosh(X)
% ACOSH   Inverse hyperbolic cosine.
% (Quaternion overloading of standard Matlab function.)

% Copyright (c) 2006 Stephen J. Sangwine and Nicolas Le Bihan.
% See the file : Copyright.m for further details.

narginchk(1, 1), nargoutchk(0, 1)

if isreal(X)
    
    % X is a real quaternion, and we compute the inverse hyperbolic cosine
    % of an isomorphic complex number using the standard Matlab acosh function,
    % then construct a quaternion with the same axis as the original
    % quaternion.
    
    Y = isoquaternion(acosh(isocomplex(X)), X);
else
    
    % X is a complex quaternion, and therefore we cannot use the method
    % above for real quaternions, because it is not possible to construct
    % an isomorphic complex number.
    
    error('quaternion/acosh is not yet implemented for complex quaternions');
end

% $Id: acosh.m 1048 2020-02-05 19:32:45Z sangwine $

