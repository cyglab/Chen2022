clear;

eeglab;
procpath='/home/youguo/文档/EEGDATA/贝叶斯实验数据/epoch6/';

EEG = pop_loadset('s1_l800.set', procpath);

load('./expMean/s400.mat');%0dlt
load('./expMean/s600.mat');%ldlt
load('./expMean/s800.mat');%sdlt
load('./expMean/l800.mat');%0dst
load('./expMean/l1000.mat');%ldst
load('./expMean/l1200.mat');%sdst
load('./expMean/times.mat');
load('./expMean/chan.mat');


b1erp = permute(s400,[2 1 3]);
b2erp = permute(s600,[2 1 3]);
b3erp = permute(s800,[2 1 3]);
b4erp = permute(l800,[2 1 3]);
b5erp = permute(l1000,[2 1 3]);
b6erp = permute(l1200,[2 1 3]);

base1=mean(b1erp(201:251,:,:),1);
base2=mean(b2erp(201:251,:,:),1);
base3=mean(b3erp(201:251,:,:),1);
base4=mean(b4erp(201:251,:,:),1);
base5=mean(b5erp(201:251,:,:),1);
base6=mean(b6erp(201:251,:,:),1);

x=times;
sizx=size(x);
for i=1:sizx(2);
    berp1(i,:,:)=b1erp(i,:,:)-base1;
    berp2(i,:,:)=b2erp(i,:,:)-base2;
    berp3(i,:,:)=b3erp(i,:,:)-base3;
    berp4(i,:,:)=b4erp(i,:,:)-base4;
    berp5(i,:,:)=b5erp(i,:,:)-base5;
    berp6(i,:,:)=b6erp(i,:,:)-base6;
end;


%[6 7 9 10 11 12 14 16 18]
erp1=mean(berp1(:,:,[1:18]),3);
erp2=mean(berp2(:,:,[1:18]),3);
erp3=mean(berp3(:,:,[1:18]),3);
erp4=mean(berp4(:,:,[1:18]),3);
erp5=mean(berp5(:,:,[1:18]),3);
erp6=mean(berp6(:,:,[1:18]),3);

ferp1=mean(erp1(:,[5 4 36 9 53 40 14 13 44]),2);
ferp2=mean(erp2(:,[5 4 36 9 53 40 14 13 44]),2);
ferp3=mean(erp3(:,[5 4 36 9 53 40 14 13 44]),2);
ferp4=mean(erp4(:,[5 4 36 9 53 40 14 13 44]),2);
ferp5=mean(erp5(:,[5 4 36 9 53 40 14 13 44]),2);
ferp6=mean(erp6(:,[5 4 36 9 53 40 14 13 44]),2);






dif=ferp4-ferp3;

%C = linspecer(2);



subplot(1,2,1);

indx1=find(times(1,:)>=230);
indx2=find(times(1,:)<=900);
indx=intersect(indx1,indx2);

merp3=mean(erp3(indx,:),1);
merp4=mean(erp4(indx,:),1);
topdif=merp4-merp3;

topoplot(topdif,chan,'style','both', 'electrodes','on');

clear indx1 indx2 indx;

subplot(1,2,2);

indx1=find(times(1,:)>=1000);
indx2=find(times(1,:)<=1300);
indx=intersect(indx1,indx2);

merp3=mean(erp3(indx,:),1);
merp4=mean(erp4(indx,:),1);
topdif=merp4-merp3;

topoplot(topdif,chan,'style','both', 'electrodes','on');

clear indx1 indx2 indx;

erp=topdif';
EEG = pop_dipfit_settings(EEG); % Follow GUI instructions to perform co-registration
[ dipole model TMPEEG] = dipfit_erpeeg(erp, EEG.chanlocs, 'settings', EEG.dipfit, 'threshold', 100, 'dipoles', 1);

% Show dipole information (spherical or MNI coordinate based on the model selected)
dipole

% plot the dipole in 3-D
pop_dipplot(TMPEEG, 1, 'normlen', 'on');

% Plot the dipole plus the scalp map
figure; pop_topoplot(TMPEEG,0,1, [ 'ERP 100ms, fit with a single dipole (RV ' num2str(dipole(1).rv*100,2) '%)'], 0, 1);

