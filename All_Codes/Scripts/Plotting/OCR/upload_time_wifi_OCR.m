ocrwifiupg4 = cdfplot(ocrwifiup4);
ylim([0 1.3]);
xlim([0 7000]);
set(ocrwifiupg4,'Color','y','linewidth',2);

hold on

ocrwifiupg5 = cdfplot(ocrwifiup5);
set(ocrwifiupg5,'Color',[.4 .5 .6],'linewidth',2);

hold on

ocrwifiupg6 = cdfplot(ocrwifiup6);
set(ocrwifiupg6,'Color','k','linewidth',2);

hold on

ocrwifiupg1 = cdfplot(ocrwifiup1);
set(ocrwifiupg1,'Color','r','linewidth',2);

hold on

ocrwifiupg2 = cdfplot(ocrwifiup2);
set(ocrwifiupg2,'Color','b','linewidth',2);

hold on

ocrwifiupg3 = cdfplot(ocrwifiup3);
set(ocrwifiupg3,'Color','g','linewidth',2);
legend('7:00 A.M.','10:00 A.M.', '1:30 P.M.','4:30 P.M.','7:30 P.M.', '12 A.M.');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Upload Time for OCR Images - wifi')

%y = get(ocrwifiupg3,'YData');

