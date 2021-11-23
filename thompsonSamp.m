%% Thompson Sampling for Linear Bandit
 % Gaussian Reward Noise
 % Charlie Thornton July 2020
 %%

function [act,collision,missedO,numSubsSelected, allReward] = thompsonSamp(bands,n,intf)

allReward = 0;
k = ((bands)*(bands+1))/2; %arms
S = 2^(bands);
ActionsList = SelectOnlyContiguousBands(de2bi([1:2^(bands)-1], bands, 'left-msb')); 
save('ActionsList.mat','ActionsList');
if bands > 10
    intfA = zeros(length(intf(:,1)),(bands-10));
    intf = [intf intfA];
end


d = 2;  %dimensionality
B =  eye(d); %prior covariance
mu = zeros(1,d); %prior mean
f =  zeros(d,1);       %prior update

cSteps = 10;

plays = zeros(k,S);
play2 = zeros(k,cSteps);

sumR = zeros(k,S);
meanR = zeros(k,S);
lastR = zeros(k,S);

loss = zeros(1,n);
col  = zeros(1,n);

context =  zeros(k,d);
armVal  =   zeros(k,1);

act        = zeros(n,bands);
reward     = zeros(n,1);
prevAct    = ones(1,bands);
expD       = zeros(k,1);
best       = zeros(n,1);
bestArm    = 21;

collision       = zeros(n,1);
missedO         = zeros(n,1);
numSubsSelected = zeros(n,1);
state           = intf(1,:);
Sn = bi2de(flip(intf(1,:)))+1;

count = 1;

for t = 1:n
    %target_range(t+1)  = Vr*PRI(t+1)*t+Ro+cn(t+1);
    theta = mvnrnd(mu,inv(B));
    %Calculate posterior index for each arm
    for i=1:k
        if plays(i,Sn) > 0
              c1 = meanR(i,Sn);%mean(history(i,Sn,1:plays(i,Sn)));
              c2 = lastR(i,Sn);%history(i,Sn,plays(i,Sn));
         else
              c1 = rand;
              c2 = rand;
         end       
            context(i,:) = [c1,c2]; %arm specific context  
        armVal(i) = dot(context(i,:),theta);     
    end 
    [~,bestArm] = max(armVal); %play arm with highest posterior index
    
    SnP = bi2de(flip(state))+1;
    prevState = state;
    
    state = intf(t+1,:);
    
    if t == 1
       count = 1;
    elseif prevState == state
       count = count+1;
    else
       count = 1;
    end
    
    Sn = bi2de(flip(state))+1;
    
    plays(bestArm,SnP) = plays(bestArm,SnP)+1;
    if count <= cSteps
        play2(bestArm,count) = play2(bestArm,count)+1;
    else
        play2(bestArm,cSteps) = play2(bestArm,cSteps)+1;
    end
    
    best(t) = bestArm;
    
    fullAct = ActionsList(bestArm,:);
    act(t,:) = fullAct;
       
    [reward(t),collision(t)] = CalculateReward(fullAct,state,bands);
    allReward = allReward + reward(t);   
%     
    % full act is the decision being made
    optimal = [0,0,0,0,0];
 
    contigOpen = state(:,:); % current observed interference
    contigOpen = not(contigOpen);
    fast = find(diff([false,contigOpen==1,false])~=0);
    [m,ix] = max(fast(2:2:end)-fast(1:2:end-1));
    runStart = fast((2*ix)-1);   
    longRun = m;  
    runEnd = runStart+longRun-1;
    optimal(runStart:runEnd) = 1; % SAA next time step 

    A = fullAct + optimal;  % test current selection w current optimal

    % if there is a missed opportunity 
    if sum(A(runStart:runEnd) == 2) < m
        %disp("hello")
        missedO(t) = sum(A(runStart:runEnd) == 1);
    end
    
    numSubsSelected(t) = sum(fullAct);
    
    sumR(bestArm,SnP) = sumR(bestArm,SnP)+reward(t);
    meanR(bestArm,SnP) = sumR(bestArm,SnP)/plays(bestArm,SnP);
    lastR(bestArm,SnP) = reward(t);   
    prevAct = fullAct;
     
    %Update posterior dist
     B = B + context(bestArm,:)'*context(bestArm,:);
     f = f + context(bestArm,:)'*reward(t);
     mu = B\f;
     
     if t > 1
        loss(t) = loss(t-1)+(1-reward(t));
        col(t)  = col(t-1)+collision(t);
     end
        
end
allReward =  allReward/n;
% steps = 1:n;
% plot(loss./steps)
% xlabel('PRI $\#$')
% ylabel('Average Loss')
% title('Average Loss of Thompson Sampling Algorithm')
% save('act.mat','act')
% save('collision.mat','collision')
%csvwrite('C:\Users\Charlie Thornton\Desktop\Summer 2020\Simualte_Radar_CPI\context\010821\cEXP3jAct_jam_t1.csv',act)
%csvwrite('C:\Users\Charlie Thornton\Desktop\Summer 2020\Simualte_Radar_CPI\context\010821\cEXP3jCols_jam_t1.csv',collision)
end