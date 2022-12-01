function vpd=calcVPD(t,tdew);
% send data in degrees C for t and tdew;
% output is vpd in kPa

% solve for vapor pressure at  temp
ew = 6.1078*exp(17.27*t./(t + 237.3)); 

% solve for vapor pressure at dewpoint temp

ewd = 6.1078*exp(17.27*tdew./(tdew + 237.3));

vpd=ew-ewd;
vpd=vpd/10; % output data in Pa
