ftotairtelg4 = cdfplot(ftotairtel4);
ylim([0 1.2]);
xlim([0 8000]);
set(ftotairtelg4,'Color','y','linewidth',2);

hold on

ftotairtelg5 = cdfplot(ftotairtel5);
set(ftotairtelg5,'Color',[.5 .6 .7],'linewidth',2);

hold on

ftotairtelg6 = cdfplot(ftotairtel6);
set(ftotairtelg6,'Color','k','linewidth',2);

hold on

ftotairtelg1 = cdfplot(ftotairtel1);
set(ftotairtelg1,'Color','r','linewidth',2);

hold on

ftotairtelg2 = cdfplot(ftotairtel2);
set(ftotairtelg2,'Color','b','linewidth',2);

hold on

ftotairtelg3 = cdfplot(ftotairtel3);
set(ftotairtelg3,'Color','g','linewidth',2);

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Total Time for Face Images - Airtel4G')

% ftotairtelavgg = cdfplot(ftotairtel);
% ylim([0 1.2]);
% xlim([0 8000]);
% legend('Total time - Average - Airtel4G');
% xlabel({'Time','(in ms)'})
% ylabel('Fraction of Images');
% title('Average Total Time for Face Images - Airtel4G')