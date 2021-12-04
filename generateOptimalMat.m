function weightedOptimalMat = generateOptimalMat(tMat,optimal_decisions,valuesIntf,dim)
%% This creates a weighted tMat based on reward and probability
%   Input: Pre-generated Transition Matrix
%   Output: Reward matrix weighted on the Transition probabilities

    weightedOptimalMat = zeros([size(tMat,1) size(tMat,2)]);
    R                  = zeros([size(tMat,1) size(tMat,2)]);

 
%     % Loop over possible actions
%         for k=1:size(tMat,1)  % Skip action that corresponds to no transmission (assumes radar must pick at least one subband for transmission)
%             T = optimal_decisions(k,:);
%             % Loop over possible inteference states
%             for m=1:size(tMat,1)
%                 I = valuesIntf(m,:);
%                 Nc = sum(and(T,I));             % Determine number of collisions
%                 if Nc>0
%                     R(k,m) = 0;                 % Compute reward function
%                 else
%                     Nmo = sum(not(or(T,I)));    % Determine number of missed opportunities
%                     if Nmo == 0 
%                         R(k,m) = 1;             % Compute reward function
%                     else
%                         R(k,m) = 5/(6*Nmo);   % Compute reward function
%                     end
%                 end
%             end
%         end
%         

%--------------------------------------------------------------------------
% Value each action based on seen interference and multiply thru
%--------------------------------------------------------------------------
        % Loop over possible actions
        for k=1:size(tMat,1)  % Skip action that corresponds to no transmission (assumes radar must pick at least one subband for transmission)
            T = valuesIntf(k,:);
            % Loop over possible inteference states
            for m=1:size(tMat,1)
                I = optimal_decisions(m,:);
                Nc = sum(and(T,I));             % Determine number of collisions
                if Nc>0
                    R(k,m) = 0;                 % Compute reward function
                else
                    Nmo = sum(not(or(T,I)));    % Determine number of missed opportunities
                    if Nmo == 0 
                        R(k,m) = 1;             % Compute reward function
                    else
                        R(k,m) = 5/(6*Nmo);   % Compute reward function
                    end
                end
            end
        end
        
    avgRewardValue =  mean(R,2);   
    
    for i = 1:size(tMat,1)
        for j = 1:size(tMat,1)
            weightedOptimalMat(i,j) = tMat(i,j) * avgRewardValue(i);
        end
    end
    
        
    %% ORIGINAL
    %weightedOptimalMat = R * tMat;
    
    %% TRY TRANSPOSING R BEFORE MULTIPLYING
        %------------------------------------------------------------------
        % This looks promising for collisions
        %------------------------------------------------------------------
    %weightedOptimalMat = R' * tMat;
    
    %% TRY TRANSPOSING MAT AFTER MULTIPLYING
    %weightedOptimalMat = R * tMat;
    %weightedOptimalMat = weightedOptimalMat';
        
    
    
end