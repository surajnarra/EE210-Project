function res = filter3(input_array,p)
len = numel(input_array);
%p = 0.9;
for i = 1:(len-1)
    input_array(i) = (p+1)* input_array(i) - p*input_array(i+1);
end
input_array(len) = (p+1) * input_array(len);
res = input_array;
end