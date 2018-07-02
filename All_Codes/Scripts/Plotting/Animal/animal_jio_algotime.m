animalalgjiog11 = cdfplot(animalalgjio11);
ylim([0 1.2]);
xlim([0 6000]);
set(animalalgjiog11,'Color','y','linewidth',2);

hold on

animalalgjiog12 = cdfplot(animalalgjio12);
set(animalalgjiog12,'Color',[.4 .5 .6],'linewidth',2);
hold on

animalalgjiog13 = cdfplot(animalalgjio13);
set(animalalgjiog13,'Color','k','linewidth',2);
hold on

animalalgjiog14 = cdfplot(animalalgjio14);
set(animalalgjiog14,'Color','r','linewidth',2);
hold on

animalalgjiog15 = cdfplot(animalalgjio15);
set(animalalgjiog15,'Color','b','linewidth',2);
hold on

animalalgjiog16 = cdfplot(animalalgjio16);
set(animalalgjiog16,'Color','g','linewidth',2);
hold on

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for animal Images - Jio')