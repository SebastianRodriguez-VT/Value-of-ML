function [rewardingSAA, action, missedSAA, average_opt_collisions, OptimalSubsSelected, rewardOptimal, collision] ...
           = RunSenseAvoid(weightedOptimalMat, states, n, valuesIntf, optimal_decisions, dim)
%% Run SAA, calculate collisions & missed opportunities

    start = states(1,:);
    action = zeros(n,5);
    action(1,:) = start;
    collision = zeros(n,1);
    collision(1) = sum(states(1,:));
    
    missedSAA = zeros(n,1);
    rewardingSAA = 0;
    optimal_results = zeros(n,4);
    
    for running = 2:n
        
        %------------------------------------------------------------------
        % Collisions SAA calculation
        %------------------------------------------------------------------
        optimal = [0,0,0,0,0];
        contigOpen = states(running-1,:);
        contigOpen = not(contigOpen);
        f = find(diff([false,contigOpen==1,false])~=0);
        [m,ix] = max(f(2:2:end)-f(1:2:end-1));
        runStart = f((2*ix)-1);   
        longRun = m;  
        runEnd = runStart+longRun-1;  
        action(running,runStart:runEnd) = 1;
        stack = states(running,:)+action(running,:);
        collision(running) = sum(stack>1);
        
        [rewardSAA,notNeeded] = CalculateReward(action(running,:),states(running,:),dim);
        rewardingSAA = rewardingSAA + rewardSAA;
        
        
        %------------------------------------------------------------------
        % Missed opportunities SAA calculation
        %------------------------------------------------------------------
        contigOpen2 = states(running,:);
        contigOpen2 = not(contigOpen2);
        f = find(diff([false,contigOpen2==1,false])~=0);
        [m,ix] = max(f(2:2:end)-f(1:2:end-1));
        runStart = f((2*ix)-1);   
        longRun = m;  
        runEnd = runStart+longRun-1;        
        optimal(runStart:runEnd) = 1; % SAA next time step 
        
        A = action(running,:) + optimal;  % test current selection w current optimal
        %disp(stack);
        % if there is a missed opportunity 
        % This includes all missed opportunities without considering
        % collisions at that exact step
        if sum(A(runStart:runEnd) == 2) < m
            missedSAA(running) = sum(A(runStart:runEnd) == 1);
        end
          
        
        
        %------------------------------------------------------------------
        % Optimal Decision making
        %------------------------------------------------------------------
        
        % Look at previous interferer, find what row it represents
        previous_intf = bi2de(states(running-1,:), 'left-msb') + 1;
%         disp("previous_intf");
%         disp(previous_intf);
%         disp(states(running-1,:));

        % Find the highest number (probability) and its index in that row
        % This represents the highest likelihood that the interferer will
        % occur in the next time step
%%%%%%%%[max_prob, index_prob] = max(tMat(previous_intf,:));
        
        [reward_opt, index_prob] = max(weightedOptimalMat(previous_intf,:));

        
        
        % Choose that predicted interferer as defined by that index
        predicted_interferer = valuesIntf(index_prob,:);
%         disp("predicted interferer");
%         disp(predicted_interferer);
        
        % Pull the next state interferer to compare to
        actual_intf = states(running,:);
%         disp("actual_intf");
%         disp(actual_intf);
        
        % Choose the optimal state given that interference
        decision = optimal_decisions(index_prob,:);
%         disp("Optimal Decision");
%         disp(decision);
        
        %action_mistakes(running,1:5) = actual_intf;
        %action_mistakes(running,6:10) = predicted_interferer;
        % Observe the collisions and Missed opportunities
        % collisions
        stack = actual_intf + decision;
%         disp("current inf + decision");
%         disp(stack);
        Optimal_collision = sum(stack>1);
        OptimalSubsSelected   = sum(decision==1);
        
        % The Issue I'm facing here is that optimal missed opportunities is
        % a difficult problem to code. It'll take me mapping several
        % solutions to the possible optimal one. 

        % An example would be when the interferer chooses: [0,1,0,1,0]
        % I cant just assign the "optimal solution" to [0,0,0,0,1]
        % Because [1,0,0,0,0], and [0,0,1,0,0] are BOTH equally optimal
        % solutions. It isn't too challenging but I will need to work that
        % out, so for now missed opportunities isn't 



        % Store results in "optimal_decision_making" set
        optimal_results(running,4) = reward_opt;
        optimal_results(running,3) = OptimalSubsSelected;
        optimal_results(running,2) = Optimal_collision;
        optimal_results(running,1) = running;
        
    end
    
    rewardOptimal      = mean(optimal_results(:,4));
    OptimalSubsSelected    = mean(optimal_results(:,3)); 
    average_opt_collisions = mean(optimal_results(:,2)); 

end