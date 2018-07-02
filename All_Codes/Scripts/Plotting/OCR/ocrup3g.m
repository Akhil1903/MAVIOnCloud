ocr3gupg4 = cdfplot(ocr3gup4);
ylim([0 1.3]);
xlim([0 7000]);
set(ocr3gupg4,'Color','y','linewidth',2);

hold on

ocr3gupg5 = cdfplot(ocr3gup5);
set(ocr3gupg5,'Color',[.4 .5 .6],'linewidth',2);

hold on

ocr3gupg6 = cdfplot(ocr3gup6);
set(ocr3gupg6,'Color','k','linewidth',2);

hold on

ocr3gupg1 = cdfplot(ocr3gup1);
set(ocr3gupg1,'Color','r','linewidth',2);

hold on

ocr3gupg2 = cdfplot(ocr3gup2);
set(ocr3gupg2,'Color','b','linewidth',2);

hold on

ocr3gupg3 = cdfplot(ocr3gup3);
set(ocr3gupg3,'Color','g','linewidth',2);
legend('7:00 A.M.','10:00 A.M.', '1:30 P.M.','4:30 P.M.','7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Upload Time for OCR Images - 3g')

%y = get(ocr3gupg3,'YData');

