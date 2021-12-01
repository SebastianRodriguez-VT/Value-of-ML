function totalEntropy = CalculateEntropy(testing)
%% Takes in a transition matrix and computes average entropy per row

%     testing = tMat;  % I just do this because I'm scared to change tMat
    entropy = 0;
    totalEntropy = 0;
    
    for j = 1:size(testing,1)
        entropy = 0;
        for i = 1:size(testing,2)
            if testing(j,i) == 0
                continue
            else
                % H 
                entropy = entropy + testing(j,i) * log(testing(j,i));
            end
        end
        entropy = -1 * entropy;
        % I'm not sure if this should be just summed or averaged
        % if it should be averaged then totalEntropy = totalEntropy/tStates
        totalEntropy = totalEntropy + entropy;
    end
    
end