function r = ComputeDiagonal(tMat)
%% Compute "Diagon-onality" 
%   This  just takes the one matrix math equation found on the internet
%   and applies it to our transition matrix. This will be one of our metrics to
%   correlate our transition matrix to SAA's ability to perform against ML.

    if isequal(size(tMat,1),size(tMat,2))
         dim = size(tMat,1);
    else
         disp("Transition Matrix is not square");
    end
    
    % I stuck to the variables they mentioned in the website
    j   = zeros(1,dim);
    r1  = j;
    r2  = j;
    for i = 1:dim
        j(i) =  1;
        r1(i) = i;
        r2(i) = i^2;
    end
    
    n       = j  * tMat *  j';
    sumX    = r1 * tMat *  j';
    sumY    = j  * tMat * r1';
    sumX2   = r2 * tMat *  j';
    sumY2   = j  * tMat * r2';
    sumXY   = r1 * tMat * r1';
    
    
    r = ((n * sumXY) - (sumX * sumY)) / ( sqrt(n * sumX2 - (sumX)^2) * sqrt(n * sumY2 - (sumY)^2) );
    
end

    
    