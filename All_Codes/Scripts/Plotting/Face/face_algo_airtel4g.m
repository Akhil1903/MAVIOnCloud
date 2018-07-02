falgairtelg4 = cdfplot(falgairtel4);
ylim([0 1.2]);
xlim([0 2500]);
set(falgairtelg4,'Color','y','linewidth',2);

hold on

falgairtelg5 = cdfplot(falgairtel5);
set(falgairtelg5,'Color',[.5 .6 .7],'linewidth',2);

hold on

falgairtelg6 = cdfplot(falgairtel6);
set(falgairtelg6,'Color','k','linewidth',2);

hold on

falgairtelg1 = cdfplot(falgairtel1);
set(falgairtelg1,'Color','r','linewidth',2);

hold on

falgairtelg2 = cdfplot(falgairtel2);
set(falgairtelg2,'Color','b','linewidth',2);

hold on

falgairtelg3 = cdfplot(falgairtel3);
set(falgairtelg3,'Color','g','linewidth',2);

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for Face Images - Airtel4G')

% falgairtelavgg = cdfplot(falgairtelavg);
% %set(falgairtelavgg,'Color','r','linewidth','2');
% ylim([0 1.2]);
% xlim([0 2500]);
% legend('Algo Time - Average - Airtel4G');
% xlabel({'Time','(in ms)'})
% ylabel('Fraction of Images');
% title('Average Algo Time for Face Images - Airtel4G')