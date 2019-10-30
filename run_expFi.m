%% runFilter
% Example for the Exponential Filter function
%% Andreas Bernatzky 30.10.2019
clear all;
close all;
%% create noisy signal
myNoise = [zeros(1,50) ones(1,100)*2];
nS = 1;%noise strength 
myNoise = myNoise .* ((rand(1,length(myNoise)) * nS) + 1) ; % + 1 to keep noise around value of 1 

plot(myNoise,'lineWidth',1);%plot noisy signal 
legend('Noisy signal');
ylim([0 max(myNoise) + 1]); 
pHandle = gca;% create handle to current axe
hold on 
%% do Filtering
filterMat = [];
cMat = 1:1:15;
for(a=1:1:length(cMat)) %do for different filters
    filterMat(a,:) = expFi(myNoise,cMat(a));
    dL = "Filter Constant="+num2str(cMat(a));
    plot(filterMat(a,:),'DisplayName',dL);
end
legend show
title('Exponential Filter');



