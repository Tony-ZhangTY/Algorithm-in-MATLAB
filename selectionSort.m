% This is a selection sort program to put unsorted array in ascending order

function sortedArray = selectionSort(unsortedArray)
% Input:        unsortedArray: a vector of real numbers
%               
% Outputs;      sortedArray: the original array in ascending order
%               
% Description: The function takes an unsorted array and sort it in an
%              ascending order and return it.
%
% Author: Tianyi Zhang
%
% Date: June 15, 2019


% get the length of the array
n = length(unsortedArray);

% for each iteration, the cursor +1 meaning moves to the next index
for i = 1 : n-1

    % assuming the first element in the subarray is the minimum
    indexOfMin = i;
    
    % compare the number and save the index of the minimum
    for j = i+1 : n
        if unsortedArray(j) < unsortedArray(indexOfMin)
            indexOfMin = j;
        end
    end
    
    % swap the minimum number with number at index i
    unsortedArray([i indexOfMin]) = unsortedArray([indexOfMin i]);
end

% return the ascending array
sortedArray = unsortedArray;
end