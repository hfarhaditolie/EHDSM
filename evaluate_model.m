clc;
clear;
%load the extracted featuPLCC from all images within a dataset
%feature matrixe should be nx230, where n is the number of images in a dataset
%x=load('featuPLCC.mat')


x=sqrt(abs(x));
x(isnan(x))=0;

%Load the MOSs into the variable y
%y=	SIQAD_dmos;

PLCC=[];
RMSE=[];
SRCC=[];

addpath('findrmse')
for i=1:1000
    i
cv = cvpartition(size(x,1),'HoldOut',0.2);
idx = cv.test;
Train_x = x(~idx,:);
Test_x  = x(idx,:);
Train_y = y(~idx,:);
Test_y  = y(idx,:);

cmd1 = '-s 3 -g 1 -t 2 -c 128 -p 1';
model1=svmtrain(Train_y,Train_x,cmd1);
[t_ehdsm] = svmpredict(Test_y, Test_x, model1);
[delta,beta,a,b,diff] = findrmse2(t_ehdsm,Test_y);
PLCC=[PLCC;corr(a,b)];
SRCC=[SRCC;corr(a,b,'type','spearman')];
RMSE=[RMSE;(mean(diff.^2))^0.5];

end
median(PLCC)
median(SRCC)
median(RMSE)
