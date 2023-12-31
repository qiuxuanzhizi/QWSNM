function Y = tanh(X)
% TANH   Hyperbolic tangent.
% (Octonion overloading of standard Matlab function.)

% Copyright (c) 2006 Stephen J. Sangwine and Nicolas Le Bihan.
% See the file : Copyright.m for further details.

Y = sinh(X) ./ cosh(X);

% Note. This may not be the best way to implement tanh,
% but it has the merit of simplicity and will work for
% all cases for which sinh and cosh work.
% $Id: tanh.m 1053 2020-02-17 18:13:03Z sangwine $


% Created automatically from the quaternion
% function of the same name on 17-Feb-2020.