function sortedList = mergeSort(unsortedList)
% Input:        unsortedList: a vector of real numbers
%               
% Outputs;      sortedList: the original array in ascending order
%               
% Description: The function takes an unsorted array and sort it in an
%              ascending order and return it using mergeSort algorithm
%
% Author: Tianyi Zhang
%
% Date: June 23, 2019  

% Initialize the sortedList
sortedList = zeros(1, length(unsortedList));


if length(unsortedList) > 1
    % get the midpoint index of the unsortedList
    mid = floor(length(unsortedList)/2);
    
    % recursively call mergeSort to sort lefthalf and righthalf
    
    lefthalf = mergeSort(unsortedList(1 : mid));
    righthalf = mergeSort(unsortedList(mid+1 : end));
    
    % assuming after mergeSort(lefthalf) and mergeSort(righthalf), the both
    % subarray has assorted in ascending order, now it needs to combine the
    % two subarray
    
    % since both lefthalf and righthalf has sorted, we only needs to
    % compare each element, and put it into sortedList
    i = 1;
    j = 1;
    k = 1;
    while i <= length(lefthalf) && j <= length(righthalf)
        if lefthalf(i) < righthalf(j)
            sortedList(k) = lefthalf(i);
            i = i + 1;
        else
            sortedList(k) = righthalf(j);
            j = j + 1;
        end
        k = k + 1; 
    end
    
    % For case when lefthalf and righthalf are not same length, then
    % remained element needs to put at the end of sortedList
    while i <= length(lefthalf)
        sortedList(k) = lefthalf(i);
        i = i + 1;
        k = k + 1;
    end
    
    while j <= length(righthalf)
        sortedList(k) = righthalf(j);
        j = j + 1;
        k = k + 1;
    end
    
    
% Base case: only one element in the list, it is automatically sorted
else
    sortedList = unsortedList;
end

end