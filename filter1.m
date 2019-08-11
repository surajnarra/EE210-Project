function res = filter1(input_array,M)
len = numel(input_array);
%M = 3;
m = (M-1)/2;
for i = 1:len
    lower = max(1, i-m);
    upper = min(len, m+i);
    
    result = 0;
    for j = lower:upper
        result = result + (1/M) * input_array(j);
    end
    
    input_array(i) = result; 
end
res = input_array;
end