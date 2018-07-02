ocrtotairtelg1 = cdfplot(ocrtotairtel1);
ylim([0 1.2]);
xlim([0 8000]);
set(ocrtotairtelg1,'Color','r','linewidth',2);

hold on

ocrtotairtelg2 = cdfplot(ocrtotairtel2);
set(ocrtotairtelg2,'Color','b','linewidth',2);

legend('English','Both','Location','northwest');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Total Time for ocr Images - Airtel4G - Average')