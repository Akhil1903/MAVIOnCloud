ocrtotwifig11 = cdfplot(ocrtotwifi11);
ylim([0 1.2]);
xlim([0 8000]);
set(ocrtotwifig11,'LineStyle', '--','Color','y','linewidth',2);
hold on

ocrtotwifig12 = cdfplot(ocrtotwifi12);
set(ocrtotwifig12,'LineStyle', '--','Color',[.4 .5 .6],'linewidth',2);
hold on

ocrtotwifig13 = cdfplot(ocrtotwifi13);
set(ocrtotwifig13,'LineStyle', '--','Color','k','linewidth',2);
hold on

ocrtotwifig14 = cdfplot(ocrtotwifi14);
set(ocrtotwifig14,'LineStyle', '--','Color','r','linewidth',2);
hold on

ocrtotwifig15 = cdfplot(ocrtotwifi15);
set(ocrtotwifig15,'LineStyle', '--','Color','b','linewidth',2);
hold on

ocrtotwifig16 = cdfplot(ocrtotwifi16);
set(ocrtotwifig16,'LineStyle', '--','Color','g','linewidth',2);
hold on
% 
% ocrtotwifig21 = cdfplot(ocrtotwifi21);
% ylim([0 1.2]);
% xlim([0 8000]);
% set(ocrtotwifig21,'Color','y','linewidth',2);
% hold on
% 
% ocrtotwifig22 = cdfplot(ocrtotwifi22);
% set(ocrtotwifig22,'Color',[.4 .5 .6],'linewidth',2);
% hold on
% 
% ocrtotwifig23 = cdfplot(ocrtotwifi23);
% set(ocrtotwifig23,'Color','k','linewidth',2);
% hold on
% 
% ocrtotwifig24 = cdfplot(ocrtotwifi24);
% set(ocrtotwifig24,'Color','r','linewidth',2);
% hold on
% 
% ocrtotwifig25 = cdfplot(ocrtotwifi25);
% set(ocrtotwifig25,'Color','b','linewidth',2);
% hold on
% 
% ocrtotwifig26 = cdfplot(ocrtotwifi26);
% set(ocrtotwifig26,'Color','g','linewidth',2);
% hold on

legend('7:00 A.M. - English','10:00 A.M. - English', '1:30 P.M. - English','4:30 P.M. - English','7:30 P.M. - English', '12 A.M. - English','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for ocr Images - IITDWifi')