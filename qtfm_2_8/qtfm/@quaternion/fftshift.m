function Y = fftshift(X, dim)
% FFTSHIFT Shift zero-frequency component to center of spectrum.
% (Quaternion overloading of standard Matlab function.)

% Copyright (c) 2005 Stephen J. Sangwine and Nicolas Le Bihan.
% See the file : Copyright.m for further details.

narginchk(1, 2), nargoutchk(0, 1) 

if nargin == 1
    Y = overload(mfilename, X);
else
    Y = overload(mfilename, X, dim);
end

% $Id: fftshift.m 1004 2017-11-15 17:14:09Z sangwine $

