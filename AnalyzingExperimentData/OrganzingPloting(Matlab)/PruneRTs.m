function [ AvgRTGridSubj, AvgRTConcSubj] = PruneRTs(RTgrid, RTconc, AccGrid, AccConc)
% Prune RTs that are +/- 2 SD from subj mean and that are obtained from error trials

numCond = size(RTgrid,1);
numRep = size(RTgrid,2);
n = size(RTgrid,3);


%figure out mean and sd for each subject after removing error trials
RTboth = [RTgrid;RTconc];
AccBoth = [AccGrid;AccConc];

for i = 1:n
    SubjStore = [];
    for cond = 1:numCond*2
       
        %take out errors for calculating mean and SD across all trials 
        for rep = 1:numRep
            if AccBoth(cond,rep,i) == 1 %answer was correct
                SubjStore = [SubjStore; RTboth(cond,rep,i)];
            end
        end
    end
    SubjMean(i) = mean(SubjStore); %mean of all accurate trials
    SubjSD(i) = std(SubjStore);    %standard deviation of all accurate trials 
end

SumRTboth = zeros(numCond*2, n);

for i = 1:n
    
    SubjMin = SubjMean(i) - 2*SubjSD(i);
    SubjMax = SubjMean(i) + 2*SubjSD(i);
    
    
    for cond = 1:numCond*2
        nt = 0; %number of valid trials
        %take out errors and outliers
        for rep = 1:numRep
            if AccBoth(cond,rep,i) == 1 && RTboth(cond,rep,i) > SubjMin && RTboth(cond,rep,i) < SubjMax
                SumRTboth(cond,i) = SumRTboth(cond,i) +  RTboth(cond,rep,i);
                nt = nt+1;
            end
        end 
        MeanRTboth(cond,i) = SumRTboth(cond,i)/nt;
    end
end

AvgRTGridSubj = MeanRTboth(1:numCond,:); 
AvgRTConcSubj = MeanRTboth(1+numCond:numCond*2, :); 

end

