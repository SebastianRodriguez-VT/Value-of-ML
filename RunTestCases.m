%% Initilizing constants and storage
% Change this to increase the number of runs of TS and SAA we do
% it will also affect the R value, increase max_iter, lowers R
% Typically I keep it around 100 and this runs for about 15 minutes
% R will always starts at 1 now
max_iter =  600;
avg_iters = 4;

%  * laptop * much slower than my desktop. Typically the whole sim runs in 9 hours on desktop
% On laptop currently, I had this set to 10 and in 8 hours it ran 56 steps. If it
% continues linearly then it should take 96 hours to run the whole sim. 
% Changing avg_iters = 4 should run the whole 600 (assuming runtime is linear) 
% within 34 hours. Much more reasonable



% Store main values
% col 1 = case, col 2 = H, col 3 = R, col 4 = ML, col 5 = SAA, col 6 =
% optimal
storeResults = zeros(max_iter,6);

% Store Averaged Values
% col 1 = case, col 2 = H, col 3 = R, col 4 = ML, col 5 = SAA, col 6 = optimal
storeAvgResults = zeros(max_iter,9);

% Store Missed Opportunities
% col 1 = case,col 2 = R, col 3 = ML, col 4 = SAA, col 5 = H
missedOpp = zeros(max_iter,5);

% Store number of subbands selected
% col 1 = case, col 2 = R, col 3 = ML, col 4 = SAA, col 5 = Optimal
numSubsSelected = zeros(max_iter,5);

% rolling interference
% col 1 = case, col 2 = ml 25%, col 3 = ML 25-50%,, col 4 = ML 50% to end,
% col 5 col 66 = SAA 25%, col 7 = SAA 25-50%, col 8 = 50 to end 9, col 10 = R
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

%% Start Sim
sigma  = 0.10 ;
offset = 3;

tMat = zeros(tStates);
tMat =  createTMat(sigma,tStates);%,0);
tMatOffset = createTMat(sigma,tStates);%,offset);

%% Change this to whatever we're working with
MatInUse = tMatOffset;

testing = MatInUse;  % I just do this because I'm scared to change tMat 
totalEntropy    = CalculateEntropy(testing)
totalDiagonal   = ComputeDiagonal(MatInUse)

%% Generate states
states = MakeStates(MatInUse, dim, valuesIntf);
n = 400000;

%% Generate optimal weighted matrix to use in optimal decision making
weightedOptimalMat = generateOptimalMat(MatInUse,optimal_decisions,valuesIntf,dim);

runs = 50;

rewardingML = 0;
AvgCollisionsML = 0;
rewardingSAA = 0;
AvgCollisionsSAA = 0;
AvgCollisionsOptimal = 0;
rewardOptimalAvg = 0;

for numRuns = 1:15
    %% Run TS
    CPI     = 128;       % Num pulses in 1 CPI
    nCPIs   = 40;        % Num CPIs to simulate
    tPulses = CPI*nCPIs; % Total radar pulses simulated
    nSB     = dim;       % Number of sub-bands   

    [t_CPI,tCols,missedO,SubsSelected, allMLreward] = thompsonSamp(nSB,20000,states);    
    % REward/Collisions ML
    rewardingML    = rewardingML + sum(allMLreward((3 * length(tCols)/4) + 1: length(tCols)))/1280;
    AvgCollisionsML = AvgCollisionsML + sum(tCols((3 * length(tCols)/4) + 1: length(tCols)))/1280;
    

    %% Run SAA, calculate collisions & missed opportunities
    [rewardingSAA, action, missedSAA, ... 
          average_opt_collisions, OptimalSubsSelected, rewardOptimal, collision] ...
                    = RunSenseAvoid(weightedOptimalMat, states, n, valuesIntf, optimal_decisions, dim);
    % Reward SAA/ Collisions SAA
    rewardingSAA = rewardingSAA + rewardingSAA/n;
    AvgCollisionsSAA = AvgCollisionsSAA + sum(collision)/n;
    
    % Collisions Optimal / Reward Optimal
    AvgCollisionsOptimal = AvgCollisionsOptimal + average_opt_collisions;
    rewardOptimalAvg = rewardOptimalAvg + rewardOptimal;
    
    disp("Progress: %.5f", numRuns/runs)
    
end

zrewardingML2 = rewardingML/runs;
zAvgCollisionsML2 = AvgCollisionsML/runs;
zrewardingSAA2 = rewardingSAA/runs;
zAvgCollisionsSAA2 = AvgCollisionsSAA/runs;
zAvgCollisionsOptimal2 = AvgCollisionsOptimal/runs;
zrewardOptimalAvg2 = rewardOptimalAvg/runs;





