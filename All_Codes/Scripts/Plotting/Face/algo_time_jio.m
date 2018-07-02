falgjiog4 = cdfplot(falgjio4);
ylim([0 1.2]);
xlim([0 2500]);
set(falgjiog4,'Color','y','linewidth',2);

hold on

falgjiog5 = cdfplot(falgjio5);
set(falgjiog5,'Color',[.5 .6 .7],'linewidth',2);

hold on

falgjiog6 = cdfplot(falgjio6);
set(falgjiog6,'Color','k','linewidth',2);

hold on

falgjiog1 = cdfplot(falgjio1);
set(falgjiog1,'Color','r','linewidth',2);

hold on

falgjiog2 = cdfplot(falgjio2);
set(falgjiog2,'Color','b','linewidth',2);

hold on

falgjiog3 = cdfplot(falgjio3);
set(falgjiog3,'Color','g','linewidth',2);

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for Face Images - Jio')