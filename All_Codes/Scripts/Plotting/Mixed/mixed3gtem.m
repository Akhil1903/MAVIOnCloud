mixedtot3gg1 = cdfplot(mixedtot3g1);
ylim([0 1.2]);
xlim([0 6000]);
set(mixedtot3gg1,'Color','r','linewidth',2);

legend('Total time');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Total Time for mixed Images - 3g - Avg')