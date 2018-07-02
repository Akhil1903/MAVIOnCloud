mixedalgairtelg11 = cdfplot(mixedalgairtel11);
ylim([0 1.2]);
xlim([0 6000]);
set(mixedalgairtelg11,'Color','y','linewidth',2);

hold on

mixedalgairtelg12 = cdfplot(mixedalgairtel12);
set(mixedalgairtelg12,'Color',[.4 .5 .6],'linewidth',2);
hold on

mixedalgairtelg13 = cdfplot(mixedalgairtel13);
set(mixedalgairtelg13,'Color','k','linewidth',2);
hold on

mixedalgairtelg14 = cdfplot(mixedalgairtel14);
set(mixedalgairtelg14,'Color','r','linewidth',2);
hold on

mixedalgairtelg15 = cdfplot(mixedalgairtel15);
set(mixedalgairtelg15,'Color','b','linewidth',2);
hold on

mixedalgairtelg16 = cdfplot(mixedalgairtel16);
set(mixedalgairtelg16,'Color','g','linewidth',2);
hold on

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for mixed Images - airtel')