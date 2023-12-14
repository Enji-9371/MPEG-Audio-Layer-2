function A = quite_threshold(f)
    A = 3.64 * (f / 1000).^(-0.8) - 6.5 * exp(-0.6 * ((f / 1000) - 3.3).^2) + 10^(-3) * (f / 1000).^4;
end
