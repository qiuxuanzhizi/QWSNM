function x = sylvester(a, b, c)
% SYLVESTER  Solve quaternion sylvester equation AX + XB = C for X.
% (Quaternion overloading of standard Matlab function.)

% Copyright (c) 2016 Stephen J. Sangwine.
% See the file : Copyright.m for further details.

% TODO There is a direct quaternion solution to this equation which could
% be coded in place of the current matrix isomorphism method. See:
%
% Drahoslava Janovsk´a & Gerhard Opfer,
% Linear equations in quaternionic variables,
% Mitt. Math. Ges. Hamburg 27 (2008), 223–234, Section 2.

narginchk(3, 3), nargoutchk(0, 1)

% TODO Insert error checks on conformability and array data types.

R = isreal(c) && isreal(b) && isreal(c);

A = convert(a);
B = convert(b);
C = convert(c);

X = sylvester(A, B, C); % Invoke the Matlab Sylvester function.

if R
    x = unadjoint(X);
else
    x = unadjoint(X, 'real');
end

end

function A = convert(a)
% Convert quaternion array to real/complex array.

if isa(a, 'quaternion')
    if isreal(a)
        A = adjoint(a);
    else
        A = adjoint(a, 'real');
    end
else
    % TODO Error checks here for non-numeric arrays and integer arrays etc.
    A = a;
end

end

% $Id: sylvester.m 1037 2019-06-16 13:54:50Z sangwine $
