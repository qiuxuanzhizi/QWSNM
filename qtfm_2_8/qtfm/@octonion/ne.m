function r = ne(a, b)
% ~=  Not equal.
% (Octonion overloading of standard Matlab function.)

% Copyright (c) 2011 Stephen J. Sangwine and Nicolas Le Bihan.
% See the file : Copyright.m for further details.

narginchk(2, 2), nargoutchk(0, 1) 

r = ~(a == b); % Use the octonion equality operator and invert the result.

% $Id: ne.m 1004 2017-11-15 17:14:09Z sangwine $
