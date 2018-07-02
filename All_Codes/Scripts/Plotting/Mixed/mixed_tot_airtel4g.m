mixedtotairtelg11 = cdfplot(mixedtotairtel11);
ylim([0 1.2]);
xlim([0 11500]);
set(mixedtotairtelg11,'Color','y','linewidth',2);

hold on

mixedtotairtelg12 = cdfplot(mixedtotairtel12);
set(mixedtotairtelg12,'Color',[.4 .5 .6],'linewidth',2);
hold on

mixedtotairtelg13 = cdfplot(mixedtotairtel13);
set(mixedtotairtelg13,'Color','k','linewidth',2);
hold on

mixedtotairtelg14 = cdfplot(mixedtotairtel14);
set(mixedtotairtelg14,'Color','r','linewidth',2);
hold on

mixedtotairtelg15 = cdfplot(mixedtotairtel15);
set(mixedtotairtelg15,'Color','b','linewidth',2);
hold on

mixedtotairtelg16 = cdfplot(mixedtotairtel16);
set(mixedtotairtelg16,'Color','g','linewidth',2);
hold on

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Total Time for mixed Images - Airtel4G')