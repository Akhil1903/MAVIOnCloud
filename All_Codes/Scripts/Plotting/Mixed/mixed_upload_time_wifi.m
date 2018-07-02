mixedwifiupg1 = cdfplot(mixedwifiup1);
ylim([0 1.3]);
xlim([0 11000]);
set(mixedwifiupg1,'Color','y','linewidth',2);

hold on

mixedwifiupg2 = cdfplot(mixedwifiup2);
set(mixedwifiupg2,'Color',[.4 .5 .6],'linewidth',2);

hold on

mixedwifiupg3 = cdfplot(mixedwifiup3);
set(mixedwifiupg3,'Color','k','linewidth',2);

hold on

mixedwifiupg4 = cdfplot(mixedwifiup4);
set(mixedwifiupg4,'Color','r','linewidth',2);

hold on

mixedwifiupg5 = cdfplot(mixedwifiup5);
set(mixedwifiupg5,'Color','b','linewidth',2);

hold on

mixedwifiupg6 = cdfplot(mixedwifiup6);
set(mixedwifiupg6,'Color','g','linewidth',2);
legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Upload Time for mixed Images - IITDWifi')

%y = get(mixedwifiupg3,'YData');

