ocralgairtelg1 = cdfplot(ocralgairtel1);
ylim([0 1.2]);
xlim([0 4500]);
set(ocralgairtelg1,'Color','r','linewidth',2);

hold on

ocralgairtelg2 = cdfplot(ocralgairtel2);
set(ocralgairtelg2,'Color','b','linewidth',2);



legend('English','Both');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for ocr Images - Airtel4G - Average')