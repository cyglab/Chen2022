path(path,'./a_unifConv');
path(path,'./b_Kalman');
path(path,'./c_convAlone');

load('BayesUnifConv.mat');
E=mean(bootBayes.EUnif,1);
AIC(1,:)=2*(2+E);

clear E;
clear bootBayes;

load('BayesUnifConv.mat');
E=mean(bootBayes.EConv,1);
AIC(2,:)=2*(2+E);

clear E;
clear bootBayes;

load('BayesKalman.mat');
E=Bayes.E;
AIC(3,:)=2*(3+E);

load('BayesConvAlone.mat');
E=mean(bootBayes.E,1);
AIC(4,:)=2*(2+E);

clear E;
clear bootBayes;

tAIC=AIC';

dAIC(1,:)=AIC(1,:)-AIC(3,:);
dAIC(2,:)=AIC(2,:)-AIC(3,:);

dtAIC=dAIC';

hold on;
%boxplot(tAIC)
%subplot(1,2,1)
barh(dAIC(1,:),'FaceColor',[0,153,115]/255)
%alpha(0.6)

set(gca, 'xlim', [-500, 1500]);
set(gca, 'ylim', [0, 19]);

barh(dAIC(2,:),'FaceColor',[165 42 42]/255,'BarWidth',0.5)
%alpha(0.9)
set(gca, 'xlim', [-500, 1500]);
set(gca, 'ylim', [0, 19]);

set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')
hold on;
%subplot(1,2,2)


set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')
