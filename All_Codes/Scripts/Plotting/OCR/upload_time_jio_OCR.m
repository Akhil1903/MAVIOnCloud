ocrjioupg4 = cdfplot(ocrjioup4);
ylim([0 1.3]);
xlim([0 7000]);
set(ocrjioupg4,'Color','y','linewidth',2);

hold on

ocrjioupg5 = cdfplot(ocrjioup5);
set(ocrjioupg5,'Color',[.4 .5 .6],'linewidth',2);

hold on

ocrjioupg6 = cdfplot(ocrjioup6);
set(ocrjioupg6,'Color','k','linewidth',2);

hold on

ocrjioupg1 = cdfplot(ocrjioup1);
set(ocrjioupg1,'Color','r','linewidth',2);

hold on

ocrjioupg2 = cdfplot(ocrjioup2);
set(ocrjioupg2,'Color','b','linewidth',2);

hold on

ocrjioupg3 = cdfplot(ocrjioup3);
set(ocrjioupg3,'Color','g','linewidth',2);
legend('7:00 A.M.','10:00 A.M.', '1:30 P.M.','4:30 P.M.','7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Upload Time for OCR Images - Jio')

%y = get(ocrjioupg3,'YData');

