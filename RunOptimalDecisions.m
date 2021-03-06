function [average_collisions, numSubsSelected, rewardOptimal] = RunOptimalDecisions(weightedOptimalMat, states, n, valuesIntf, optimal_decisions)
%% Testing Optimal Decision Code
% add optimal decision making here
    
    % Choose a random starting subband position
    % observe that random starting position compared to states(1,:)
    %% add optimal decision making here
    optimal_results = zeros(n,4);
%     action_mistakes = zeros(n,10);

    % Choose a random starting subband position
    % observe that random starting position compared to states(1,:)
    for running = 2:n 

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
%         decision = optimal_decisions(index_prob,:);
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
        numSubsSelected   = sum(decision==1);
        
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
        optimal_results(running,3) = numSubsSelected;
        optimal_results(running,2) = Optimal_collision;
        optimal_results(running,1) = running;
    end
    
    rewardOptimal      = mean(optimal_results(:,4));
    numSubsSelected    = mean(optimal_results(:,3)); 
    average_collisions = mean(optimal_results(:,2)); 
end