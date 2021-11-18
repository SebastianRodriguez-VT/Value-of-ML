function states = MakeStates(tMat, dim, values)
%% Generate states given our Transition Matrix
%   This takes our transition matrix and generate a sequence of actions
%   taken by the jammer based on the probabilities defined in our
%   transition matrix.
%   We hope to see that as the model has "less" to learn it performs worse
%   than classical SAA techniques

    factor = 1000;
    states = zeros(400000, dim);
    
    action = floor(rand(1,1)*((2^dim))) + 1; %choose a random starting point
     
    % up until here our transitions look like this 
    %    [.2, .2, .1, .1, .1, .1 , .2,0,0,0, ...]
    % expand the transition matrix values
    transitions = tMat * factor;

    % Now they look like this
    %    [200, 200, 100, 100, 100, 100, 200, 0,0,0, ...]
    
    % sorts our transitions summing them up to 1000
    
    for i = 1:size(transitions,1)
        sumVal = 0;
        for j = 1:size(transitions,2)
            if sumVal < factor && transitions(i,j) > 0.00
                sumVal = sumVal + transitions(i,j);
                transitions(i,j) = sumVal;     
                %disp(sumVal)
            end
        end
    end
    % Transtions will now looke like this 
    %     [200, 400, 500, 600, 700, 800, 1000, 0,0,0, ...]
    
    
    states(1,:) = de2bi(mod(action,32),5,'left-msb');
    
    
    
    % Create states by generating a uniform random number between 0, 1000
    % and check where it falls in our transition list, based on that it
    % generates an action and does that for all 400,000 intf states
    for i = 1:size(states,1)
        currentVal = floor(rand(1,1)*(factor));   % generates a random num
        %disp(currentVal)
        %disp(action)
        
        if currentVal < transitions(action,1)
                action = 1;
        else
            for j = 1:size(transitions,2)
                if currentVal >= transitions(action,j) && currentVal < transitions(action,j+1)
                    action = j+1;
                    break
                end
            end
        end

        %disp(values(action, :))
        
        states(i,:) = values(action,:);
    end
end

    
    
    
















