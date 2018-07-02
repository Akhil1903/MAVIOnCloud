mixedtotjiog11 = cdfplot(mixedtotjio11);
ylim([0 1.2]);
xlim([0 11500]);
set(mixedtotjiog11,'Color','y','linewidth',2);

hold on

mixedtotjiog12 = cdfplot(mixedtotjio12);
set(mixedtotjiog12,'Color',[.4 .5 .6],'linewidth',2);
hold on

mixedtotjiog13 = cdfplot(mixedtotjio13);
set(mixedtotjiog13,'Color','k','linewidth',2);
hold on

mixedtotjiog14 = cdfplot(mixedtotjio14);
set(mixedtotjiog14,'Color','r','linewidth',2);
hold on

mixedtotjiog15 = cdfplot(mixedtotjio15);
set(mixedtotjiog15,'Color','b','linewidth',2);
hold on

mixedtotjiog16 = cdfplot(mixedtotjio16);
set(mixedtotjiog16,'Color','g','linewidth',2);
hold on

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Total Time for mixed Images - Jio')