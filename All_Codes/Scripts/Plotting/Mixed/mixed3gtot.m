mixedtot3gg11 = cdfplot(mixedtot3g11);
ylim([0 1.2]);
xlim([0 11500]);
set(mixedtot3gg11,'Color','y','linewidth',2);

hold on

mixedtot3gg12 = cdfplot(mixedtot3g12);
set(mixedtot3gg12,'Color',[.4 .5 .6],'linewidth',2);
hold on

mixedtot3gg13 = cdfplot(mixedtot3g13);
set(mixedtot3gg13,'Color','k','linewidth',2);
hold on

mixedtot3gg14 = cdfplot(mixedtot3g14);
set(mixedtot3gg14,'Color','r','linewidth',2);
hold on

mixedtot3gg15 = cdfplot(mixedtot3g15);
set(mixedtot3gg15,'Color','b','linewidth',2);
hold on

mixedtot3gg16 = cdfplot(mixedtot3g16);
set(mixedtot3gg16,'Color','g','linewidth',2);
hold on

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Total Time for mixed Images - 3g')