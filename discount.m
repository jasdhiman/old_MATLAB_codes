% function to provide discount based on number of items purchased
function a=discount
x=input('Enter number of watches: ');
if x<2 
    a=fprintf('total cost = $ %d\ntotal discount = 0%%\nfinal cost = $ %d',x*20,x*20);
elseif x>=2&&x<=4
    a=fprintf('total cost = $ %d\ntotal discount = 5%%\nfinal cost = $ %d',x*20,x*20*0.95);
elseif x>=5&&x<=9
    a=fprintf('total cost = $ %d\ntotal discount = 10%%\nfinal cost = $ %d',x*20,x*20*0.90);
elseif x>=10&&x<=29 
    a=fprintf('total cost = $ %d\ntotal discount = 15%%\nfinal cost = $ %d',x*20,x*20*0.85);
elseif x>=30&&x<=99
    a=fprintf('total cost = $ %d\ntotal discount = 20%%\nfinal cost = $ %d',x*20,x*20*0.80);
elseif x>=100&&x<=299 
    a=fprintf('total cost = $ %d\ntotal discount = 25%%\nfinal cost = $ %d',x*20,x*20*0.75);
else
    a=fprintf('total cost = $ %d\ntotal discount = 30%%\nfinal cost = $ %d',x*20,x*20*0.70);
end;
end
