function Y = tan(X)
% TAN    Tangent.
% (Octonion overloading of standard Matlab function.)

% Copyright (c) 2006 Stephen J. Sangwine and Nicolas Le Bihan.
% See the file : Copyright.m for further details.

Y = sin(X) ./ cos(X);

% Note. This may not be the best way to implement tan,
% but it has the merit of simplicity and will work for
% all cases for which sin and cos work.
% $Id: tan.m 1053 2020-02-17 18:13:03Z sangwine $


% Created automatically from the quaternion
% function of the same name on 17-Feb-2020.