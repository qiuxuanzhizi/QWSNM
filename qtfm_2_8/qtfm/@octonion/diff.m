function Y = diff(X, n, dim)
% DIFF   Differences.
% (Octonion overloading of standard Matlab function.)

% Copyright (c) 2008 Stephen J. Sangwine and Nicolas Le Bihan.
% See the file : Copyright.m for further details.

narginchk(1, 3), nargoutchk(0, 1) 

if nargin == 1
    Y = overload(mfilename, X);
elseif nargin == 2
    Y = overload(mfilename, X, n);
else
    if ~isnumeric(dim)
        error('Dimension argument must be numeric');
    end
    
    if ~isscalar(dim) || ~ismember(dim, 1:ndims(X))
        error(['Dimension argument must be a positive'...
               ' integer scalar within indexing range.']);
    end

    Y = overload(mfilename, X, n, dim);   
end

% Note: In the absence of this file, the Matlab function of the same name is
% called for an octonion array, but it raises an error. That is why this
% function was written, and why the Matlab code can't simply be used to
% difference octonion arrays.

% $Id: diff.m 1059 2020-02-18 19:55:52Z sangwine $

% Created automatically from the quaternion
% function of the same name on 17-Feb-2020.