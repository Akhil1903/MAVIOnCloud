mixedalgwifig11 = cdfplot(mixedalgwifi11);
ylim([0 1.2]);
xlim([0 6000]);
set(mixedalgwifig11,'Color','y','linewidth',2);

hold on

mixedalgwifig12 = cdfplot(mixedalgwifi12);
set(mixedalgwifig12,'Color',[.4 .5 .6],'linewidth',2);
hold on

mixedalgwifig13 = cdfplot(mixedalgwifi13);
set(mixedalgwifig13,'Color','k','linewidth',2);
hold on

mixedalgwifig14 = cdfplot(mixedalgwifi14);
set(mixedalgwifig14,'Color','r','linewidth',2);
hold on

mixedalgwifig15 = cdfplot(mixedalgwifi15);
set(mixedalgwifig15,'Color','b','linewidth',2);
hold on

mixedalgwifig16 = cdfplot(mixedalgwifi16);
set(mixedalgwifig16,'Color','g','linewidth',2);
hold on

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for mixed Images - IITDWifi')