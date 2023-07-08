function B = ipermute(A, order)
% IPERMUTE Inverse permute dimensions of N-D array
% (Octonion overloading of standard Matlab function.)

% Copyright (c) 2008 Stephen J. Sangwine and Nicolas Le Bihan.
% See the file : Copyright.m for further details.

narginchk(2, 2), nargoutchk(0, 1)

B = overload(mfilename, A, order);

% $Id: ipermute.m 1061 2020-02-18 20:04:37Z sangwine $

% Created automatically from the quaternion
% function of the same name on 18-Feb-2020.