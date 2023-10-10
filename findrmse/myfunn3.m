
function F = myfunn3(beta,x)
% F = (beta(1)-beta(2))./(1+exp(-(x-beta(3))/beta(4)))+beta(2);
F = beta(1)*(0.5-1./(1+exp(beta(2)*(x-beta(3)))))+beta(4)*x+beta(5);

%(a-b)/(1+exp(-(x-c)/d))+b
%a*(0.5-1/(1+exp(b*(x-c))))+d*x+e
%yy=4.92;beta(3)-beta(4)*log((beta(1)-beta(2))/(yy-beta(2))-1);
