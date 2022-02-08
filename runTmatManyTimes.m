

% Run the same tMat a bunch of times
% col 0 = Run number
% col 1 = R values
% col 2 = Col Saa
% col 3 = Col Optimal
% col 4 = Col ML
% col 5 = Reward Saa
% col 6 = Reward Optimal
% col 7 = Reward ML
full_run = 50;
runs = zeros(full_run,8);
avg_iters = 1;

tStates = 32;
dim = 5;

valuesIntf  = zeros(tStates,dim);

for i = 0: (tStates-1)
       valuesIntf(i+1,:) = de2bi(i,dim,'left-msb');
end

for i = 1:full_run
    
    tMat1 = createTMat(10.55, 32);
    rValue = ComputeDiagonal(tMat1);
    states = MakeStates(tMat1, dim, valuesIntf);
    
    runs(i,1) = i;
    runs(i,2) = rValue;
    
    

    %% Run TS
    CPI     = 128;       % Num pulses in 1 CPI
    nCPIs   = 40;        % Num CPIs to simulate
    tPulses = CPI*nCPIs; % Total radar pulses simulated
    nSB     = dim;       % Number of sub-bands   


    [t_CPI,tCols,missedO,SubsSelected, allMLreward] = thompsonSamp(nSB,400000,states);    
    % Calculate Average collisions
    AvgCollisionsML = sum(tCols)/length(tCols);
    % store Collisions ML
%     storeResults(index,4) = AvgCollisionsML;

    % Calculate Average subbands selected TS
%         numSubsSelected(index,3) = (sum(SubsSelected)/length(SubsSelected));

    % Calculate Average Missed opportunities
%         AvgMissedOpportunitiesML = sum(missedO)/length(missedO);
%         missedOpp(index,3) = AvgMissedOpportunitiesML;


    % store rolling interferences
%         Intf_rolling(index,2)   = Intf_rolling(index,2) + sum(tCols(1:length(tCols)/4))/1280;
%         Intf_rolling(index,3)   = Intf_rolling(index,3) + sum(tCols(length(tCols)/4 + 1: length(tCols)/2 ))/1280;
%         Intf_rolling(index,4)   = Intf_rolling(index,4) + sum(tCols(length(tCols)/2 + 1: (3 * length(tCols)/4)))/1280;
    runs(i,5) = sum(tCols((3 * length(tCols)/4) + 1: length(tCols)))/(length(tCols)/4);

    weightedOptimalMat = generateOptimalMat(tMat1,optimal_decisions,valuesIntf,dim);
    %%%%%% Set the 8 to 1 to get the normal 400,000
    shorten = length(states)/400;
    %% Run SAA, calculate collisions & missed opportunities
    [rewardingSAA, action, missedSAA, ... 
          average_opt_collisions, OptimalSubsSelected, rewardOptimal, collision] ...
                    = RunSenseAvoid(weightedOptimalMat, states(1:shorten,:), shorten, valuesIntf, optimal_decisions, dim, tMat1);

    runs(i,6) = rewardingSAA/shorten;

    runs(i,4) = average_opt_collisions;
%         AvgCollisionsOptimal = average_opt_collisions;


    % store average number of subbands selected SAA
%         numSubsSelected(index,4) = numSubsSelected(index,4) + sum(action, 'all')/length(action);
%         numSubsSelected(index,5) = numSubsSelected(index,5) + OptimalSubsSelected;

    % Calculate Average Missed opportunities
%         AvgMissedOpportunitiesSAA = sum(missedSAA)/length(missedSAA);
%         missedOpp(index,4) = AvgMissedOpportunitiesSAA;

%         Intf_rolling(index,6)   = Intf_rolling(index,6) + sum(collision(1:length(collision)/4))/(shorten/4);
%         Intf_rolling(index,7)   = Intf_rolling(index,7) + sum(collision(length(collision)/4 + 1: length(collision)/2 ))/(shorten/4);
%         Intf_rolling(index,8)   = Intf_rolling(index,8) + sum(collision(length(collision)/2 + 1: (3 * length(collision)/4)))/(shorten/4);
%         Intf_rolling(index,9)   = Intf_rolling(index,9) + sum(collision((3 * length(collision)/4) + 1: length(collision)))/(shorten/4);

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Collisions SAA
    runs(i,3) = sum(collision)/shorten;
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%         running_SAA_collisions = running_SAA_collisions + AvgCollisionsSAA;
%         running_ML_collisions =  running_ML_collisions + AvgCollisionsML; 
%         running_optimal_collisions = running_optimal_collisions + AvgCollisionsOptimal;
    %running_SAA_MO = running_SAA_MO + ;
    %running_ML_MO = running_ML_MO + ;
    % implement this now
    runs(i,7) = rewardOptimal;
    runs(i,8) =  allMLreward;


    disp("Progress " + (i/full_run)*100  + "%");
  
end

figure 
plot(runs(:,1), runs(:,3),'LineWidth',3)
hold on
plot(runs(:,1), runs(:,4),'LineWidth',3)
hold on
plot(runs(:,1), runs(:,5),'LineWidth',3)
legend('SAA','Optimal', 'ML')
grid on

figure 
plot(runs(:,1), runs(:,6),'LineWidth',3)
hold on
plot(runs(:,1), runs(:,7),'LineWidth',3)
hold on
plot(runs(:,1), runs(:,8),'LineWidth',3)
legend('SAA','Optimal', 'ML')
grid on