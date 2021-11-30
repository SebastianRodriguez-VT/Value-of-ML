%%%%%%%%%%%%%%%%%%%%%%%%%
%% Value of ML vs SAA
% Sebastian Rodriguez, drsebastian@vt.edu, Fall 2021
%%%%%%%%%%%%%%%%%%%%%%%%%

%% TODO:
%   Fix the optimal collisions, it's definitely not averaging properly.
%   Add optimal to the average subband selection, this may show something
%   Create a first run of the R,H -> MDP code
%   Tell my girlfriend I love her





% Change this to increase the number of runs of TS and SAA we do
% it will also affect the R value, increase max_iter, lowers R
% Typically I keep it around 100 and this runs for about 15 minutes
% R will always starts at 1 now
max_iter = 600;




avg_iters = 4;

% currently, I had this set to 10 and in 8 hours it ran 56 steps. If it
% continues linearly then it should take 96 hours to run the whole sim. 
% Changing avg_iters = 4 should run the whole 600 (assuming runtime is linear) 
% within 34 hours. Much more reasonable



% Store main values
% col 1 = case, col 2 = H, col 3 = R, col 4 = ML, col 5 = SAA, col 6 = optimal
storeResults = zeros(max_iter,6);

% Store Averaged Values
% col 1 = case, col 2 = H, col 3 = R, col 4 = ML, col 5 = SAA, col 6 = optimal
storeAvgResults = zeros(max_iter,9);



% Store Missed Opportunities
% col 1 = case,col 2 = R, col 3 = ML, col 4 = SAA, col 5 = H
missedOpp = zeros(max_iter,5);

% Store number of subbands selected
% col 1 = case, col 2 = R, col 3 = ML, col 4 = SAA
numSubsSelected = zeros(max_iter,4);

% rolling interference
% col 1 = case, col 2 = ml 25%, col 3 = ML 25-50%,, col 4 = ML 50% to end,
% col 5
% col 66 = SAA 25%, col 7 = SAA 25-50%, col 8 = 50% to end 9, col 10 = R
Intf_rolling = zeros(max_iter,11);

dim       = 5;     % num of subbands
tStates = 2 ^ dim; % total combinations of subbands
% valuesIntf
% stores the combination of binary numbers that represent the interferers,
% this is used for the "makeStates"
valuesIntf  = zeros(tStates,dim);

for i = 0: (tStates-1)
       valuesIntf(i+1,:) = de2bi(i,dim,'left-msb');
end


sigma = 8.00;
for index = 1:max_iter
    
    tMat    = zeros(tStates);
    
    running_SAA_collisions = 0;
    running_ML_collisions =  0; 
    running_SAA_MO =         0;
    running_ML_MO =          0;
    running_optimal_collision = 0;
    running_optimal_reward = 0;
    running_ML_reward  =     0;
    running_SAA_reward =     0;
    running_R_avg      =     0;
    running_H_avg      =     0;
    
    
    
    for iters = 1:avg_iters
    
    % make TMat
    for i = 1:tStates
        
         probabilities = [0;0;0];
         sum2Norm = 0;

        %% Generate normal random values 
        % normrnd(mu,sigma);
        % mu - mean, sigma - std
        % x - 
        randChoices = zeros(1,700);
        sz = size(randChoices);
        randChoices = abs(ceil(normrnd(i,sigma,sz)));
        
        
        %% Tally the occurances and generate transition Mat. from that
        for j = 1:700
            % This loops our random choices around in case our dist. chooses
            % values higher than our max num of states
            if randChoices(j) > tStates
               randChoices(j) = mod(randChoices(j),tStates); 
            end

            % if its not in there, then put it in there
            % else, find where it is and increment its occurance
            if any(probabilities(2,:) == randChoices(j)) ~= 1 
                probabilities(:,end+1) = [1;randChoices(j);0];
            else 
                colLoc = find(probabilities(2,:) == randChoices(j));
                probabilities(1,colLoc) = probabilities(1,colLoc) + 1;
            end
        end
        
        
        % sum and normalize the values, assign weights to every number
        sum2Norm = probabilities(2,:) * probabilities(1,:)';
        for z = 1:size(probabilities,2)
            probabilities(3,z) = (probabilities(2,z)/sum2Norm) * probabilities(1,z);                
        end
        
        % Store the values in tMat2
        for temp = 2:size(probabilities,2)
            tMat(i,int8(probabilities(2,temp))) = probabilities(3,temp);
        end
    end
    % now Transition Mat. is generated
    
    
    
    % calculate average entropy
    % and store values
    testing = tMat;  % I just do this because I'm scared to change tMat
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
    
    
    % I need to clean this up, I don't need it saving all this over and
    % over, just 1 matrix with everything will suffice.
    
    % store cases
    storeResults(index,1)      = index;
    Intf_rolling(index,1)      = index;
    missedOpp(index,1)         = index;
    numSubsSelected(index,1)   = index;
    
    % store entropy
    storeResults(index,2)  = totalEntropy/(size(testing,1));
    Intf_rolling(index,11) = storeResults(index,2);
    missedOpp(index,5)     = storeResults(index,2);
    Intf_rolling(index,11) = storeResults(index,2);
    
    workingHvalue = storeResults(index,2);
    
    % store r value
    storeResults(index,3)   = ComputeDiagonal(tMat);
    missedOpp(index,2)      = storeResults(index,3); 
    Intf_rolling(index,10)  = storeResults(index,3);
    numSubsSelected(index,2)= storeResults(index,3);
    
    workingRvalue = storeResults(index,3);
    
    
    % generate states
    states = MakeStates(tMat, dim, valuesIntf);
        
    n = 400000;

    %% add optimal decision making here
    optimal_results = zeros(n,2);
    % Choose a random starting subband position
    % observe that random starting position compared to states(1,:)
    %% add optimal decision making here
    optimal_results = zeros(n,2);
    action_mistakes = zeros(n,10);

    % Choose a random starting subband position
    % observe that random starting position compared to states(1,:)
    rewardOptimal = 0;
    for running = 2:n 

        % Look at previous interferer, find what row it represents
        previous_intf = bi2de(states(running-1,:), 'left-msb') + 1;

        % Find the highest number (probability) and its index in that row
        % This represents the highest likelihood that the interferer will
        % occur in the next time step
        [max_prob, index_prob] = max(tMat(previous_intf,:));

        % Choose that predicted interferer as defined by that index
        predicted_interferer = valuesIntf(index_prob,:);

        % Pull the next state interferer to compare to
        actual_intf = states(running,:);

        % Choose the optimal state given that interference
        decision = optimal_decisions(index_prob,:);

        action_mistakes(running,1:5) = actual_intf;
        action_mistakes(running,6:10) = predicted_interferer;
        % Observe the collisions and Missed opportunities
        % collisions
        stack = actual_intf + decision;
        Optimal_collision = sum(stack>1);
        
        [reward,notneeded] = CalculateReward(decision, actual_intf, dim);
        rewardOptimal = rewardOptimal + reward;
        
        % The Issue I'm facing here is that optimal missed opportunities is
        % a difficult problem to code. It'll take me mapping several
        % solutions to the possible optimal one. 

        % An example would be when the interferer chooses: [0,1,0,1,0]
        % I cant just assign the "optimal solution" to [0,0,0,0,1]
        % Because [1,0,0,0,0], and [0,0,1,0,0] are BOTH equally optimal
        % solutions. It isn't too challenging but I will need to work that
        % out, so for now missed opportunities isn't 



        % Store results in "optimal_decision_making" set
        optimal_results(running,2) = Optimal_collision;
        optimal_results(running,1) = running;
    end
    
    rewardOptimal = rewardOptimal/n;
    storeResults(index,6) = sum(optimal_results(:,2)) / n;
    AvgCollisionsOptimal = storeResults(index,6);


    
    
    
    
    CPI     = 128;       % Num pulses in 1 CPI
    nCPIs   = 40;        % Num CPIs to simulate
    tPulses = CPI*nCPIs; % Total radar pulses simulated
    nSB     = 5;         % Number of sub-bands   


    %states = MakeStates(tMat, nSB, valuesIntf);

    % Run TS
    [t_CPI,tCols,missedO,SubsSelected, allMLreward] = thompsonSamp(nSB,tPulses,states);    
    % Calculate Average collisions
    AvgCollisionsML = sum(tCols)/length(tCols);
    % store Collisions ML
    storeResults(index,4) = AvgCollisionsML;
    
    % Calculate Average subbands selected
    numSubsSelected(index,3) = sum(SubsSelected)/length(SubsSelected);
    
    % Calculate Average Missed opportunities
    AvgMissedOpportunitiesML = sum(missedO)/length(missedO);
    missedOpp(index,3) = AvgMissedOpportunitiesML;
    
    
    % store rolling interferences
    Intf_rolling(index,2)   = sum(tCols(1:length(tCols)/4))/1280;
    Intf_rolling(index,3)   = sum(tCols(length(tCols)/4 + 1: length(tCols)/2 ))/1280;
    Intf_rolling(index,4)   = sum(tCols(length(tCols)/2 + 1: (3 * length(tCols)/4)))/1280;
    Intf_rolling(index,5)   = sum(tCols((3 * length(tCols)/4) + 1: length(tCols)))/1280;

    

    
    %% Run SAA, calculate collisions % missed opportunities
    start = states(1,:);
    action = zeros(n,5);
    action(1,:) = start;
    collision = zeros(n,1);
    collision(1) = sum(states(1,:));
    
    missedSAA = zeros(n,1);
    rewardingSAA = 0;
    for k = 2:n
        optimal = [0,0,0,0,0];
        
        contigOpen = states(k-1,:);
        contigOpen = not(contigOpen);
        f = find(diff([false,contigOpen==1,false])~=0);
        [m,ix] = max(f(2:2:end)-f(1:2:end-1));
        runStart = f((2*ix)-1);   
        longRun = m;  
        runEnd = runStart+longRun-1;  
        action(k,runStart:runEnd) = 1;
        stack = states(k,:)+action(k,:);
        collision(k) = sum(stack>1);
        
        [rewardSAA,notNeeded] = CalculateReward(action(k,:),states(k,:),dim);
        rewardingSAA = rewardingSAA + rewardSAA;
        
        
        % Missed opportunities SAA calculation
        contigOpen2 = states(k,:);
        contigOpen2 = not(contigOpen2);
        f = find(diff([false,contigOpen2==1,false])~=0);
        [m,ix] = max(f(2:2:end)-f(1:2:end-1));
        runStart = f((2*ix)-1);   
        longRun = m;  
        runEnd = runStart+longRun-1;        
        optimal(runStart:runEnd) = 1; % SAA next time step 
        
        A = action(k,:) + optimal;  % test current selection w current optimal
        %disp(stack);
        % if there is a missed opportunity 
        % This includes all missed opportunities without considering
        % collisions at that exact step
        if sum(A(runStart:runEnd) == 2) < m
            missedSAA(k) = sum(A(runStart:runEnd) == 1);
        end
        
    end
    rewardingSAA = rewardingSAA/n;
    
    % store average number of subbands selected 
    numSubsSelected(index,4) = sum(action, 'all')/length(action);
    
    % Calculate Average Missed opportunities
    AvgMissedOpportunitiesSAA = sum(missedSAA)/length(missedSAA);
    missedOpp(index,4) = AvgMissedOpportunitiesSAA;
    
    Intf_rolling(index,6)   = sum(collision(1:length(collision)/4))/(n/4);
    Intf_rolling(index,7)   = sum(collision(length(collision)/4 + 1: length(collision)/2 ))/(n/4);
    Intf_rolling(index,8)   = sum(collision(length(collision)/2 + 1: (3 * length(collision)/4)))/(n/4);
    Intf_rolling(index,9)   = sum(collision((3 * length(collision)/4) + 1: length(collision)))/(n/4);
    % Collisions SAA
    storeResults(index,5) = sum(collision)/n;
    AvgCollisionsSAA = storeResults(index,5);
    
    
    
    running_SAA_collisions = running_SAA_collisions + AvgCollisionsSAA;
    running_ML_collisions =  running_ML_collisions + AvgCollisionsML; 
    running_optimal_collisions = running_optimal_collision + AvgCollisionsOptimal;
    %running_SAA_MO = running_SAA_MO + ;
    %running_ML_MO = running_ML_MO + ;
    % implement this now
    running_optimal_reward = running_optimal_reward + rewardOptimal;
    running_ML_reward  = running_ML_reward  + allMLreward;
    running_SAA_reward = running_SAA_reward + rewardingSAA;
    running_R_avg      = running_R_avg + workingRvalue;
    running_H_avg      = running_H_avg + workingHvalue;
    
    
    storeAvgResults(index,1) = index;
    end
    % Store Averaged Values
    % col 1 = case, col 2 = H, col 3 = R, col 4 = SAA_COLL, col 5 =
    % ML_COLL, col 6 = optimal_COLL, col 7 = SAA_reward, col 8 = ML_reward,
    % col 9 =  
    % storeAvgResults = zeros(max_iter,6);
    storeAvgResults(index,2) = running_H_avg/avg_iters;
    storeAvgResults(index,3) = running_R_avg/avg_iters;
    storeAvgResults(index,4) = running_SAA_collisions/avg_iters;
    storeAvgResults(index,5) = running_ML_collisions/avg_iters;
    storeAvgResults(index,6) = running_optimal_collisions/avg_iters;
    storeAvgResults(index,7) = running_SAA_reward/avg_iters;
    storeAvgResults(index,8) = running_ML_reward/avg_iters;
    storeAvgResults(index,9) = running_optimal_reward/avg_iters;
    
    
    
    % increment sigma for our norm dist.
    sigma = sigma + (30/max_iter);
end


% Sort rewards, average collisions long term runs, plot
average_sorted_H = sortrows(storeAvgResults,2);
average_sorted_R = sortrows(storeAvgResults,3);

% Plot them up
%R Collisions
figure % fig 1 
plot(average_sorted_R(:,3),average_sorted_R(:,4), 'LineWidth', 1)
hold on
plot(average_sorted_R(:,3),average_sorted_R(:,5), 'LineWidth', 1)
hold on
plot(average_sorted_R(:,3),average_sorted_R(:,6), 'LineWidth', 1)
title('R-Value vs Collisions ML vs SAA')
xlabel('R') 
ylabel('Avg. Collisions') 
legend({'SAA', 'ML','Optimal'},'Location','northeast')
%H Collisions
figure % fig 1 
plot(average_sorted_H(:,2),average_sorted_R(:,4), 'LineWidth', 1)
hold on
plot(average_sorted_H(:,2),average_sorted_R(:,5), 'LineWidth', 1)
hold on
plot(average_sorted_H(:,2),average_sorted_R(:,6), 'LineWidth', 1)
title('H-Value vs Collisions ML vs SAA')
xlabel('H') 
ylabel('Avg. Collisions') 
legend({'SAA', 'ML','Optimal'},'Location','southeast')

%R Reward
figure % fig 1 
plot(average_sorted_R(:,3),average_sorted_R(:,7), 'LineWidth', 1)
hold on
plot(average_sorted_R(:,3),average_sorted_R(:,8), 'LineWidth', 1)
hold on
plot(average_sorted_R(:,3),average_sorted_R(:,9), 'LineWidth', 1)
title('R-Value vs Reward ML vs SAA')
xlabel('R') 
ylabel('Avg. Reward') 
legend({'SAA', 'ML','Optimal'},'Location','northeast')
%H Reward
figure % fig 1 
plot(average_sorted_H(:,2),average_sorted_R(:,7), 'LineWidth', 1)
hold on
plot(average_sorted_H(:,2),average_sorted_R(:,8), 'LineWidth', 1)
hold on
plot(average_sorted_H(:,2),average_sorted_R(:,9), 'LineWidth', 1)
title('H-Value vs Reward ML vs SAA')
xlabel('H') 
ylabel('Avg. Reward') 
legend({'SAA', 'ML','Optimal'},'Location','southeast')








% sort and graph

Colls_sorted = sortrows(Intf_rolling,10);
Colls_sorted_H = sortrows(Intf_rolling,11);
% Collisions to graph
collR      = Colls_sorted(:,10);
collH      = Colls_sorted_H(:,11);
collML25_R   = Colls_sorted(:,2);
collML50_R   = Colls_sorted(:,3);
collML75_R   = Colls_sorted(:,4);
collML100_R  = Colls_sorted(:,5);
collSAA25_R  = Colls_sorted(:,6);
collSAA50_R  = Colls_sorted(:,7);
collSAA75_R  = Colls_sorted(:,8);
collSAA100_R = Colls_sorted(:,9);

collML25_H   = Colls_sorted_H(:,2);
collML50_H   = Colls_sorted_H(:,3);
collML75_H   = Colls_sorted_H(:,4);
collML100_H  = Colls_sorted_H(:,5);
collSAA25_H  = Colls_sorted_H(:,6);
collSAA50_H  = Colls_sorted_H(:,7);
collSAA75_H  = Colls_sorted_H(:,8);
collSAA100_H = Colls_sorted_H(:,9);



% Extract R values sorted
storeValsSorted = sortrows(storeResults, 3);
storeValsSorted_H = sortrows(storeResults, 2);
%save("storeVals100_second_Sorted.mat", "storeVals100Sorted")
R = storeValsSorted(:,3); % R
H = storeValsSorted_H(:,2); % H
mlR1 = storeValsSorted(:,4);% ML_R
saaR2 = storeValsSorted(:,5);% SAA_R
mlH3 = storeValsSorted_H(:,4);% ML_H
saaH4 = storeValsSorted_H(:,5);% SAA_H
optR  = storeValsSorted_H(:,6);


% Missed Opps
misse_sorted = sortrows(missedOpp,2);
misse_sorted_H = sortrows(missedOpp,5);
missR = misse_sorted(:,2);
missH = misse_sorted_H(:,5);
missML  = misse_sorted(:,3); 
missSAA = misse_sorted(:,4); 
missML_H  = misse_sorted_H(:,3); 
missSAA_H = misse_sorted_H(:,4);


%% Rolling average collisions
% R

figure % fig 1 
plot(collR,collML25_R, 'LineWidth', 1)
hold on
plot(collR,collML50_R, 'LineWidth', 1)
hold on
plot(collR,collSAA25_R, 'LineWidth', 1)
hold on
plot(collR,collSAA50_R, 'LineWidth', 1)
title('R-Value vs 0% - 50% Collisions ML vs SAA')
xlabel('R') 
ylabel('Avg. Collisions') 
legend({'ML25%', 'ML50%','SAA25%', 'SAA50%'},'Location','southeast')

figure % fig 2 
plot(collR,collML75_R, 'LineWidth', 1)
hold on
plot(collR,collML100_R, 'LineWidth', 1)
hold on
plot(collR,collSAA75_R, 'LineWidth', 1)
hold on
plot(collR,collSAA100_R, 'LineWidth', 1)
title('R-Value vs 50% - 100% Collisions ML & SAA')
xlabel('R') 
ylabel('Avg. Collisions') 
legend({'ML75%', 'ML100%','SAA75%', 'SAA100%'},'Location','southeast')

%H
figure % fig 3
plot(collH,collML25_H, 'LineWidth', 1)
hold on
plot(collH,collML50_H, 'LineWidth', 1)
hold on
plot(collH,collSAA25_H, 'LineWidth', 1)
hold on
plot(collH,collSAA50_H, 'LineWidth', 1)
title('Entropy Value vs 0% - 50% Collisions ML vs SAA')
legend({'ML25%', 'ML50%','SAA25%', 'SAA50%'},'Location','southeast')

figure % fig 4
plot(collH,collML75_H, 'LineWidth', 1)
hold on
plot(collH,collML100_H, 'LineWidth', 1)
hold on
plot(collH,collSAA75_H, 'LineWidth', 1)
hold on
plot(collH,collSAA100_H, 'LineWidth', 1)
title('Entropy Value vs 50% - 100% Collisions ML & SAA')
legend({'ML75%', 'ML100%','SAA75%', 'SAA100%'},'Location','southeast')




%% Overall average collisions
% R
figure % fig 5
plot(R,mlR1, 'LineWidth', 1)
hold on
plot(R,saaR2, 'LineWidth', 2)
hold on
plot(R,flip(optR), 'LineWidth', 1)
xlabel('R') 
ylabel('Avg. Collissions') 
legend({'ML','SAA', 'Optimal'},'Location','northeast')
xlabel('R') 
ylabel('Avg. Collisions') 
title('[R-Value] Average Collisions ML vs SAA vs Optimal')
% H
figure % fig 6
plot(H,mlH3, 'LineWidth', 1)
hold on
plot(H,saaH4, 'LineWidth', 1)
legend({'ML','SAA'},'Location','northeast')
xlabel('H') 
ylabel('Avg. Collisions') 
title('[Entropy] Average Collisions ML vs SAA')




%% Missed opportunities
% R
figure % fig 7
plot(missR,missML, 'LineWidth', 1)
hold on
plot(missR,missSAA, 'LineWidth', 1)
legend({'ML','SAA'},'Location','southeast')
xlabel('R') 
ylabel('Avg. Missed Opportunities') 
title('[R-Value] Missed Opportunities ML vs SAA')
% H
figure % fig 8
plot(missH,missML_H, 'LineWidth', 1)
hold on
plot(missH,missSAA_H, 'LineWidth', 1)
legend({'ML','SAA'},'Location','southeast')
xlabel('H') 
ylabel('Avg. Missed Opportunities') 
title('[Entropy] Missed Opportunities ML vs SAA')



%% Average number of subbands
sorted_subbands = sortrows(numSubsSelected, 2);
numSubsR   = sorted_subbands(:,2);
numSubsML  = sorted_subbands(:,3);
numSubsSAA = sorted_subbands(:,4);
%R
figure % fig 9
plot(numSubsR,numSubsML, 'LineWidth', 1)
hold on
plot(numSubsR,numSubsSAA, 'LineWidth', 1)
legend({'ML','SAA'},'Location','northeast')
title('[R-value] Average subbands selected ML vs SAA')



