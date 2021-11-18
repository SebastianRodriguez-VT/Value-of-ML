max_iter = 50 
dim       = 5;     % num of subbands
tStates = 2 ^ dim; % total combinations of subbands

% Store main values
% col 1 = case, col 2 = H, col 3 = R, col 4 = ML, col 5 = SAA
storeVals = zeros(max_iter,5);

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

% valuesIntf
% stores the combination of binary numbers that represent the interferers,
% this is used for the "makeStates"
valuesIntf  = zeros(tStates,dim);
for i = 0: (tStates-1)
       valuesIntf(i+1,:) = de2bi(i,dim,'left-msb');
end

tMat    = zeros(tStates);


for i = 1:tStates

     probabilities = [0;0;0];
     sum2Norm = 0;

    %% Generate normal random values 
    % normrnd(mu,sigma);
    % mu - mean, sigma - std
    randChoices = zeros(1,700);
    sz = size(randChoices);
    randChoices = abs(ceil(normrnd(i,2,sz)));


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



r = ComputeDiagonal(tMat)


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

% Average entropy per row
AvgEnt = totalEntropy/(size(testing,1))


% generate states
states = MakeStates(tMat, dim, valuesIntf);

n = 400000;

%% add optimal decision making here
optimal_results = zeros(n,2);
action_mistakes = zeros(n,10);

% Choose a random starting subband position
% observe that random starting position compared to states(1,:)
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
    %action_mistakes(running,6:10) = predicted_interferer;
    action_mistakes(running,6:10) = decision;
    
    % Observe the collisions and Missed opportunities
    % collisions
    stack = actual_intf + decision;
    Optimal_collision = sum(stack>1);

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

average_optimal_collisions = sum(optimal_results(:,2)) / n









