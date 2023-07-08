function d = eps(X)
% EPS Floating-point relative accuracy.
% (Octonion overloading of standard Matlab function.)

% Copyright (c) 2012 Stephen J. Sangwine and Nicolas Le Bihan.
% See the file : Copyright.m for further details.

% This function will only be called for the profile eps(X) where X is a
% octonion. It is implemented only because some Matlab functions call it,
% and if not implemented these functions will not work for octonions.

narginchk(1, 1), nargoutchk(0, 1) 

d = eps(abs(X)); % X is an octonion, abs(X) is real or complex, and the
                 % eps function called from this line will be the built-in.
end

% $Id: eps.m 1053 2020-02-17 18:13:03Z sangwine $

% Created automatically from the quaternion
% function of the same name on 17-Feb-2020.