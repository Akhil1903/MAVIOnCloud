mixedalgwifig1 = cdfplot(mixedalgwifi1);
ylim([0 1.2]);
xlim([0 6000]);
set(mixedalgwifig1,'Color','r','linewidth',2);

legend('Algo time');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for mixed Images - IITDWifi - Avg')