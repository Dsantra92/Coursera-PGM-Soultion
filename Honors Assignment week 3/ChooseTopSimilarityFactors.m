function factors = ChooseTopSimilarityFactors (allFactors, F)
% This function chooses the similarity factors with the highest similarity
% out of all the possibilities.
%
% Input:
%   allFactors: An array of all the similarity factors.
%   F: The number of factors to select.
%
% Output:
%   factors: The F factors out of allFactors for which the similarity score
%     is highest.
%
% Hint: Recall that the similarity score for two images will be in every
%   factor table entry (for those two images' factor) where they are
%   assigned the same character value.
%
% Copyright (C) Daphne Koller, Stanford University, 2012

% If there are fewer than F factors total, just return all of them.
if (length(allFactors) <= F)
    factors = allFactors;
    return;
end

% Your code here:
factors = repmat(struct('var', [],'card', [], 'val', []), F, 1);
idx = 1;

for i=1:F
  for j = 2:length(allFactors)
    if(allFactors(j).val(1) > allFactors(idx).val(1))
      idx = j;
    endif
  endfor
  factors(i) = allFactors(idx);
  allFactors(idx) = [];
  idx = 1;
endfor

end

