function res = filter2(input_array,M)
%M = 3;
m = (M-1)/2;
len = numel(input_array);
for i = 1:len
    lower = max(1, i-m);
    upper = min(len, m+i);
    
    result = 0;
    for j = lower:upper
        result = result + ( (1/m) - ( (abs(j-i))/m^2 ) ) * input_array(j);
    end
    
    input_array(i) = result; 
end
res = input_array;
end