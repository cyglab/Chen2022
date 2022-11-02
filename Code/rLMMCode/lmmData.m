clear;
data(:,1)=csvread('sub.csv');
data(:,2)=csvread('bUnifPC.csv');
data(:,3)=csvread('bUnifDIs.csv');
data(:,4)=csvread('bUnifDL.csv');
data(:,5)=csvread('bUnifPE.csv');
data(:,6)=csvread('bConvPC.csv');
data(:,7)=csvread('bConvDIs.csv');
data(:,8)=csvread('bConvDL.csv');
data(:,9)=csvread('bConvPE.csv');
data(:,10)=csvread('bKalmPC.csv');
data(:,11)=csvread('bKalmDIs.csv');
data(:,12)=csvread('bKalmDL.csv');
data(:,13)=csvread('bKalmPE.csv');
data(:,14)=csvread('mP3.csv');

csvwrite('lmmData.csv',data)




