function r = cat(dim, varargin)
% CAT Concatenate arrays.
% (Octonion overloading of standard Matlab function.)

% Copyright (c) 2020 Stephen J. Sangwine and Nicolas Le Bihan.
% See the file : Copyright.m for further details.

narginchk(3, inf), nargoutchk(0, 1)

if ~isnumeric(dim)
    error('First parameter must be numeric.')
end

a = octonion(varargin{1}); % The call to the class constructor ensures
b = octonion(varargin{2}); % that a and b are both octonions, even if
                           % the first or second varargin parameter was
                           % something else. Calling the constructor   
                           % exploits the error checks there, that would
                           % be complex to include here for handling rare
                           % problems like catenating strings with
                           % octonions.
                           
% For simplicity, but perhaps not the greatest efficiency, we use the
% quaternion cat function, and work on the two component quaternions of
% each argument. This is complicated by the fact that one or both of the
% arguments may be a pure octonion.

if ispure(a) == ispure(b)
    % a and b are either both pure, or both full octonions. Easy case,
    % since the quaternion cat can handle both of these cases directly.
    r = octonion(cat(dim, a.a, b.a), ...
                 cat(dim, a.b, b.b));
else
    % One or other of a or b is pure, the other isn't. Two cases depending
    % on which one is pure.
    if ispure(a)
        % a is pure, but b isn't, so the result will need to be full and we
        % have to supply zeros for the scalar part of a with the same type
        % as the elements of a.
        r = octonion(cat(dim, ...
                         quaternion(zeros(size(a.a), class(part(a, 2))), ...
                         a.a), b.a), ...
                     cat(dim, a.b, b.b));
    else
        % b is pure, but a isn't, so the result will need to be full and we
        % have to supply zeros for the scalar part of a with the same type
        % as the elements of a.
        r = octonion(cat(dim, a.a, ...
                         quaternion(zeros(size(b.a), class(part(b, 2))), ...
                         b.a)), ...
                     cat(dim, a.b, b.b));
    end
end

if nargin > 3
    r = cat(dim, r, varargin{3:end});    
end

% $Id: cat.m 1056 2020-02-17 20:42:58Z sangwine $
