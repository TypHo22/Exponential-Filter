function [fD] = expFi(dF,fC)
%EXPFI 
%The simplest filter is the exponential filter. It is a low-pass filter
%intended to pass low frequencies and dampen high frequencies.
%There is only one tuning parameter the filterconstant fC.
%It requires the storage of only one variable - the previous output.
%It is an IIR filter (autoregressive) - the effects of an input change decay exponentially until the limits of displays or computer arithmetic hide it. 
%% Input:
%   dF = data to Filter [1xn]
%   fC = filterconstant [1x1] determines how strong the filter is
%  Output:
%   fD = filtered Data [1xn]
%% Andreas Bernatzky 30.10.2019
%%
    fD = zeros(1,length(dF));%preallocate vector
    for(a=1:1:length(dF)-1) 
       fD(a+1) = exp( - 1 / fC) * fD(a) + (1 - exp( - 1 / fC)) * dF(a); %actual filter algorithmus  
    end 
   

end

