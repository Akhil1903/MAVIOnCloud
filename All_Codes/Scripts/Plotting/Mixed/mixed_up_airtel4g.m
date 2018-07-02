mixedairtelupg1 = cdfplot(mixedairtelup1);
ylim([0 1.3]);
xlim([0 11000]);
set(mixedairtelupg1,'Color','y','linewidth',2);

hold on

mixedairtelupg2 = cdfplot(mixedairtelup2);
set(mixedairtelupg2,'Color',[.4 .5 .6],'linewidth',2);

hold on

mixedairtelupg3 = cdfplot(mixedairtelup3);
set(mixedairtelupg3,'Color','k','linewidth',2);

hold on

mixedairtelupg4 = cdfplot(mixedairtelup4);
set(mixedairtelupg4,'Color','r','linewidth',2);

hold on

mixedairtelupg5 = cdfplot(mixedairtelup5);
set(mixedairtelupg5,'Color','b','linewidth',2);

hold on

mixedairtelupg6 = cdfplot(mixedairtelup6);
set(mixedairtelupg6,'Color','g','linewidth',2);
legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Upload Time for mixed Images - Airtel4G')

%y = get(mixedairtelupg3,'YData');

