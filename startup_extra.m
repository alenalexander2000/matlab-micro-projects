function startup_extra
% STARTUP_EXTRA  Small conveniences that run whenever the project opens.
%
%   • Keeps the Command Window tidy
%   • Shows a quick “project loaded” banner
%   • (Add more lines here as your needs grow)

    % 1. Compact Command-Window layout
    format compact

    % 2. Consistent random seed for reproducible demos
    rng default

    % 3. Friendly banner (helps confirm the startup task ran)
    disp('>> matlab-micro-projects initialised.');
end