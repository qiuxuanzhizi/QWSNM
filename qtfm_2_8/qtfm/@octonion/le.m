function r = le(a, b)
% <=  Less than or equal
% (Octonion overloading of standard Matlab function.)

% Copyright (c) 2012 Stephen J. Sangwine and Nicolas Le Bihan.
% See the file : Copyright.m for further details.

% The Matlab function operating on complex values compares only the real
% parts, so here we do a comparison of the scalar parts. If these are
% complex the Matlab function will ignore the imaginary parts.

narginchk(2, 2), nargoutchk(0, 1)

if isa(a, 'octonion') && isa(b, 'octonion')
    r = scalar(a) <= scalar(b);
else
    % One of the arguments is not an octonion (the other must be, or
    % Matlab would not call this function). The non-octonion argument
    % must be a numeric (if we don't impose this restriction it could be
    % anything such as a cell array or string which makes no sense at all
    % to compare with an octonion).
            
    if isa(a, 'octonion') && isa(b, 'numeric')
        r = scalar(a) <= b;
    elseif isa(a, 'numeric') && isa(b, 'octonion')
        r = a <= scalar(b);
    else
        error('Cannot compare an octonion with a non-numeric');    
    end
end

% $Id: le.m 1053 2020-02-17 18:13:03Z sangwine $

% Created automatically from the quaternion
% function of the same name on 17-Feb-2020.