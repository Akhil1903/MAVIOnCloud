ocrairtelupg4 = cdfplot(ocrairtelup4);
ylim([0 1.3]);
xlim([0 7000]);
set(ocrairtelupg4,'Color','y','linewidth',2);

hold on

ocrairtelupg5 = cdfplot(ocrairtelup5);
set(ocrairtelupg5,'Color',[.4 .5 .6],'linewidth',2);

hold on

ocrairtelupg6 = cdfplot(ocrairtelup6);
set(ocrairtelupg6,'Color','k','linewidth',2);

hold on

ocrairtelupg1 = cdfplot(ocrairtelup1);
set(ocrairtelupg1,'Color','r','linewidth',2);

hold on

ocrairtelupg2 = cdfplot(ocrairtelup2);
set(ocrairtelupg2,'Color','b','linewidth',2);

hold on

ocrairtelupg3 = cdfplot(ocrairtelup3);
set(ocrairtelupg3,'Color','g','linewidth',2);
legend('7:00 A.M.','10:00 A.M.', '1:30 P.M.','4:30 P.M.','7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Upload Time for OCR Images - Airtel4G')

%y = get(ocrairtelupg3,'YData');

% ocrupairtelavgg = cdfplot(ocrairtelupavg);
% ylim([0 1.3]);
% xlim([0 7000]);
% legend('Average Upload time - Airtel4G');
% xlabel({'Time','(in ms)'})
% ylabel('Fraction of Images');
% title('Average Upload Time for OCR Images - Airtel4G')
% 
% 
