fairtelupg4 = cdfplot(fairtelup4);
ylim([0 1.2]);
xlim([0 8000]);
set(fairtelupg4,'Color','y','linewidth',2);

hold on

fairtelupg5 = cdfplot(fairtelup5);
set(fairtelupg5,'Color',[.5 .6 .7],'linewidth',2);

hold on

fairtelupg6 = cdfplot(fairtelup6);
set(fairtelupg6,'Color','k','linewidth',2);

hold on

fairtelupg1 = cdfplot(fairtelup1);
set(fairtelupg1,'Color','r','linewidth',2);

hold on

fairtelupg2 = cdfplot(fairtelup2);
set(fairtelupg2,'Color','b','linewidth',2);

hold on

fairtelupg3 = cdfplot(fairtelup3);
set(fairtelupg3,'Color','g','linewidth',2);
legend('7 A.M','10 A.M.','1:30 P.M.','4:30 P.M.','7:30 P.M.','12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Upload Time for Face Images - Airtel4G')

% fairtelupavg1 = cdfplot(fairtelupavg);
% ylim([0 1.2]);
% xlim([0 8000]);
% %set(fairtelupavg1,'Color','r','linewidth','2');
% xlabel({'Time','(in ms)'})
% ylabel('Fraction of Images');
% legend('Upload time - Average - Airtel4G');
% title('Average upload Time for Face Images - Airtel4G')
