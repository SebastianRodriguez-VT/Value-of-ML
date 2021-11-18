%% Reward Function Test 
%  Check hamnming distance to "best action" %

function [Reward, NumCols] = CalculateReward(CurrentAction, contigOpen, bands)

bFrac = 1/bands;

cO = contigOpen;
contigOpen = not(contigOpen);

stack = cO+CurrentAction;
NumCols = sum(stack>1);
NB = sum(CurrentAction);
f = find(diff([false,contigOpen==1,false])~=0);
[m,ix] = max(f(2:2:end)-f(1:2:end-1));

runStart = f((2*ix)-1);   
longRun = m;  
runEnd = runStart+longRun-1;
opt = zeros(1,bands);
opt(1,runStart:runEnd) = 1;
%disp(cO)
%disp(CurrentAction)

BWdist = abs(longRun-NB);

% disp('contig open');
%         disp(not(contigOpen))
%         disp('current action');
%         disp(CurrentAction);
%         disp("long run");
%         disp(longRun);
%         disp("nb");
%         disp(NB);

if NumCols > 0
    Reward = 0;
else
    if BWdist > 0
        Reward = 1-(.1*BWdist);
        %Reward  = 5/(6*BWdist);
        

    else
        Reward = 1;
    end
end

if Reward < 0 
    Reward = 0;
end

end



  