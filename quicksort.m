% This is a quicksort program to put unsorted 1 by n array in ascending order

function sortedList = quicksort(unsortedList)
% Input:        unsortedList: a vector of real numbers
%               
% Outputs;      sortedList: the original array in ascending order
%               
% Description: The function takes an unsorted array and sort it in an
%              ascending order and return it.
%
% Author: Tianyi Zhang
%
% Date: July 1, 2019

if length(unsortedList) <= 2
    if length(unsortedList) <= 1
        sortedList = unsortedList;
    else
        if unsortedList(1) > unsortedList(2)
            unsortedList([1 2]) = unsortedList([2 1]);
        end
        sortedList = unsortedList;
    end                   
% recursively sort
else
% First partition algorithm 
  pivot = unsortedList(1);  % using first element in the list as pivot
  leftIndex = 2;
  rightIndex = length(unsortedList);
  
  flag = false;
  while ~flag
      while leftIndex <= rightIndex &&  pivot >= unsortedList(leftIndex)
          leftIndex = leftIndex + 1;
      end
      while leftIndex <= rightIndex && pivot <= unsortedList(rightIndex)
          rightIndex = rightIndex -1;
      end
      if rightIndex < leftIndex
          flag = true;
      else
          unsortedList([leftIndex rightIndex]) = unsortedList([rightIndex leftIndex]); % switch element
      end      
  end
% insert the first element into the right place by switching the 
% value of first element and elementof the rightIndex
  unsortedList([1 rightIndex]) = unsortedList([rightIndex 1]);
% quicksort left side of the split and quicksort rightside of the split
  sortedList =  [quicksort(unsortedList(1 : rightIndex-1)), unsortedList(rightIndex), quicksort(unsortedList(rightIndex + 1 : end))];
end
end