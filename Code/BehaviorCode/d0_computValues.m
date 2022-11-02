clear;

load('./a_unifConv/BayesUnifConv.mat');

Unifm=squeeze(mean(bootBayes.para,2))';
Unifse=squeeze(std(bootBayes.para,0,2))';
UnifCI1=Unifm-Unifse*1.96;
UnifCI2=Unifm+Unifse*1.96;


clear bootBayes;

load('./c_convAlone/BayesConvAlone.mat');

Convm=squeeze(mean(bootBayes.para,2))';
Convse=squeeze(std(bootBayes.para,0,2))';
ConvCI1=Convm-Convse*1.96;
ConvCI2=Convm+Convse*1.96;

clear bootBayes;


load('./b_Kalman/BayesKalman.mat');

KalmanPara=Bayes.para';




