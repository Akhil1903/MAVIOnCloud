mixedalgjiog1 = cdfplot(mixedalgjio1);
ylim([0 1.2]);
xlim([0 6000]);
set(mixedalgjiog1,'Color','r','linewidth',2);

legend('Total time');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for mixed Images - Jio - Avg')