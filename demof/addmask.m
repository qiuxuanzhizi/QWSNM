function [degradedIm,H_full] = addmask(Im,ratio)
rand('seed',0);
[Ny,Nx,Nz]=size(Im);
h = double(rand([Ny,Nx]) > (1-ratio));
imgN_1 = Im(:,:,1).*h;
imgN_2 = Im(:,:,2).*h;
imgN_3 = Im(:,:,3).*h;
degradedIm = cat(3,imgN_1,imgN_2,imgN_3);
%H_full = cat(3,h,h,h);
H_full = h;
end