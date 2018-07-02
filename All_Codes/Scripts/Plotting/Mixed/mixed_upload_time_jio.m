mixedjioupg1 = cdfplot(mixedjioup1);
ylim([0 1.3]);
xlim([0 11000]);
set(mixedjioupg1,'Color','y','linewidth',2);

hold on

mixedjioupg2 = cdfplot(mixedjioup2);
set(mixedjioupg2,'Color',[.4 .5 .6],'linewidth',2);

hold on

mixedjioupg3 = cdfplot(mixedjioup3);
set(mixedjioupg3,'Color','k','linewidth',2);

hold on

mixedjioupg4 = cdfplot(mixedjioup4);
set(mixedjioupg4,'Color','r','linewidth',2);

hold on

mixedjioupg5 = cdfplot(mixedjioup5);
set(mixedjioupg5,'Color','b','linewidth',2);

hold on

mixedjioupg6 = cdfplot(mixedjioup6);
set(mixedjioupg6,'Color','g','linewidth',2);
legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Upload Time for mixed Images - Jio')

%y = get(mixedjioupg3,'YData');

