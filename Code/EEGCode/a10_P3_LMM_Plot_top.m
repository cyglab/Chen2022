clear;

eeglab;
load('./expMean/chan.mat');

x=0:4:796;

indx = find(x==352);
subplot(4,3,1);
load('lmeERPufPE.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;

subplot(4,3,2);
load('lmeERPcvPE.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;

subplot(4,3,3);
load('lmeERPkmPE.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;

subplot(4,3,5);
load('lmeERPcvPC.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;

subplot(4,3,6);
load('lmeERPkmPC.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;

subplot(4,3,7);
load('lmeERPufDkl.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;

subplot(4,3,8);
load('lmeERPcvDkl.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;

subplot(4,3,9);
load('lmeERPkmDkl.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;


subplot(4,3,10);
load('lmeERPufDIs.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;

subplot(4,3,11);
load('lmeERPcvDIs.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;

subplot(4,3,12);
load('lmeERPkmDIs.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;