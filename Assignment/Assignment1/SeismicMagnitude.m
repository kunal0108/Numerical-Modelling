% Defining the moment tensor matrix M
M = [1.760 8.040 -1.510;
    8.040 -1.820 0.475;
    -1.510 0.475 0.058] * 10^27;

% Computation of the Seismic Moment
M0 = sqrt(0.5 * sumsqr(M));

% Computation of seismic magnitude Mw from M0
Mw = 2/3*(log10(M0) - 16.1);

disp(['Seismic Magnitude Mw = ',num2str(Mw)])