% Binary search for finding an item in a sorted list

function index = binarySearch(array, targetValue)
 
% Input:        array: a vector of real numbers
%               targetVlaue: a real number
% Outputs;      returns either the index of targetValue in the array,
%               or the prompt if the array did not contain the targetValue
%
% Description: The function takes an ascending array and check if
%              the targetValue is in the array. If it is in the array, it
%              returns its index; if not, it returns the prompt that it is
%              not in the array

% Author: Tianyi Zhang

% Date: June 14, 2019

min = 1;
max = length(array);

while min <= max
    guess = floor((min + max)/2); % compute the average of the min and max index, round down
    if targetValue == array(guess) % if array(guess) is your target number, stop, you get
        index = guess;
        return;
    elseif targetValue > array(guess) % if array(guess) is smaller, set min = guess + 1
        min = guess + 1;
    else
        max = guess - 1; % otherwise, max = guess - 1
    end
end

fprintf('The number is not in the array');
end