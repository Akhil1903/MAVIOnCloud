animaltotairtelg1 = cdfplot(animaltotairtel1);
ylim([0 1.2]);
xlim([0 7500]);
set(animaltotairtelg1,'Color','r','linewidth',2);

legend('Total time','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Total Time for animal Images - Airtel4G Average')