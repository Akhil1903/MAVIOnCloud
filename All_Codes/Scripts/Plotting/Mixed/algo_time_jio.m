mixedalgjiog11 = cdfplot(mixedalgjio11);
ylim([0 1.2]);
xlim([0 6000]);
set(mixedalgjiog11,'Color','y','linewidth',2);

hold on

mixedalgjiog12 = cdfplot(mixedalgjio12);
set(mixedalgjiog12,'Color',[.4 .5 .6],'linewidth',2);
hold on

mixedalgjiog13 = cdfplot(mixedalgjio13);
set(mixedalgjiog13,'Color','k','linewidth',2);
hold on

mixedalgjiog14 = cdfplot(mixedalgjio14);
set(mixedalgjiog14,'Color','r','linewidth',2);
hold on

mixedalgjiog15 = cdfplot(mixedalgjio15);
set(mixedalgjiog15,'Color','b','linewidth',2);
hold on

mixedalgjiog16 = cdfplot(mixedalgjio16);
set(mixedalgjiog16,'Color','g','linewidth',2);
hold on

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for mixed Images - Jio')