function sortedArray = insertionSort(unsortedArray)
% Input:        unsortedArray: a vector of real numbers
%               
% Outputs;      sortedArray: the original array in ascending order
%               
% Description: The function takes an unsorted array and sort it in an
%              ascending order and return it.
%
% Author: Tianyi Zhang
%
% Date: June 16, 2019

    for index = 2 : length(unsortedArray)
        
        key = unsortedArray(index);
        
        % Move elements of [0, 1, ....index-1] that are greater
        % than the key, to one position ahead of its current position
        j = index - 1;
        while j >= 1 && key < unsortedArray(j)
            unsortedArray(j+1) = unsortedArray(j);
            j = j - 1;
        end
        unsortedArray(j+1) = key;
        
    end
    
    sortedArray = unsortedArray;
end
