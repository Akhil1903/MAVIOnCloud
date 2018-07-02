mixedtotwifig11 = cdfplot(mixedtotwifi11);
ylim([0 1.2]);
xlim([0 11500]);
set(mixedtotwifig11,'Color','y','linewidth',2);

hold on

mixedtotwifig12 = cdfplot(mixedtotwifi12);
set(mixedtotwifig12,'Color',[.4 .5 .6],'linewidth',2);
hold on

mixedtotwifig13 = cdfplot(mixedtotwifi13);
set(mixedtotwifig13,'Color','k','linewidth',2);
hold on

mixedtotwifig14 = cdfplot(mixedtotwifi14);
set(mixedtotwifig14,'Color','r','linewidth',2);
hold on

mixedtotwifig15 = cdfplot(mixedtotwifi15);
set(mixedtotwifig15,'Color','b','linewidth',2);
hold on

mixedtotwifig16 = cdfplot(mixedtotwifi16);
set(mixedtotwifig16,'Color','g','linewidth',2);
hold on

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Total Time for mixed Images - IITDWifi')