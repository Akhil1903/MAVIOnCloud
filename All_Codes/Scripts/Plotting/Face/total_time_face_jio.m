ftotjiog4 = cdfplot(ftotjio4);
ylim([0 1.2]);
xlim([0 8000]);
set(ftotjiog4,'Color','y','linewidth',2);

hold on

ftotjiog5 = cdfplot(ftotjio5);
set(ftotjiog5,'Color',[.5 .6 .7],'linewidth',2);

hold on

ftotjiog6 = cdfplot(ftotjio6);
set(ftotjiog6,'Color','k','linewidth',2);

hold on

ftotjiog1 = cdfplot(ftotjio1);
set(ftotjiog1,'Color','r','linewidth',2);

hold on

ftotjiog2 = cdfplot(ftotjio2);
set(ftotjiog2,'Color','b','linewidth',2);

hold on

ftotjiog3 = cdfplot(ftotjio3);
set(ftotjiog3,'Color','g','linewidth',2);

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Total Time for Face Images - Jio')