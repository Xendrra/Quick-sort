function y = quick_sort(x);
n=length(x);
x1 = [];
x2 = [];


if n < 2
    y = x
    return
end


for i = 1:n-1
    
    if x(i)<x(n)
        x1 = [x1,x(i)];
    else
        x2 = [x2,x(i)];
    end
end
y = [quick_sort(x1),x(n),quick_sort(x2)];
end



