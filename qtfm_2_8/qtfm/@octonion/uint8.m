function d = uint8(~)
% UINT8 Convert to unsigned 8-bit integer (obsolete).
% (Octonion overloading of standard Matlab function.)

% Copyright (c) 2006 Stephen J. Sangwine and Nicolas Le Bihan.
% See the file : Copyright.m for further details.

error(['Conversion to uint8 from octonion is not possible. ',...
       'Try cast(q, ''uint8'')'])

% Note: this function was replaced from version 0.9 with the convert
% function, because it is incorrect to provide a conversion function
% that returns an octonion result.

% $Id: uint8.m 1053 2020-02-17 18:13:03Z sangwine $

% Created automatically from the quaternion
% function of the same name on 17-Feb-2020.