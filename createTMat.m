function tMat = createTMat(sigma, tStates)%, offset)

    for i = 1:tStates

             probabilities = [0;0;0];
             sum2Norm = 0;

            % normrnd(mu,sigma);
            % mu - mean, sigma - std
            % x - 
            randChoices = zeros(1,700);
            sz = size(randChoices);
            randChoices = abs(ceil(normrnd(i,sigma,sz)));


            % Tally the occurances and generate transition Mat. from that
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
            % disp(probabilities)
            % Store the values in tMat
            for temp = 2:size(probabilities,2)
                %value = mod(probabilities(2,temp)+offset,tStates+1);
                value = mod(probabilities(2,temp),tStates+1);
                if value == 0
                    value = 1;
                end
                tMat(i,value) = probabilities(3,temp);
            end
            % now Transition Mat. is generated
    end
    %disp(probabilities)
end
