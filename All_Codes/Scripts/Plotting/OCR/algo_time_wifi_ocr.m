ocralgwifig11 = cdfplot(ocralgwifi11);
ylim([0 1.2]);
xlim([0 3500]);
set(ocralgwifig11,'LineStyle', '--','Color','y','linewidth',2);
hold on

ocralgwifig12 = cdfplot(ocralgwifi12);
set(ocralgwifig12,'LineStyle', '--','Color',[.4 .5 .6],'linewidth',2);
hold on

ocralgwifig13 = cdfplot(ocralgwifi13);
set(ocralgwifig13,'LineStyle', '--','Color','k','linewidth',2);
hold on

ocralgwifig14 = cdfplot(ocralgwifi14);
set(ocralgwifig14,'LineStyle', '--','Color','r','linewidth',2);
hold on

ocralgwifig15 = cdfplot(ocralgwifi15);
set(ocralgwifig15,'LineStyle', '--','Color','b','linewidth',2);
hold on

ocralgwifig16 = cdfplot(ocralgwifi16);
set(ocralgwifig16,'LineStyle', '--','Color','g','linewidth',2);
hold on

ocralgwifig21 = cdfplot(ocralgwifi21);
set(ocralgwifig21,'Color','y','linewidth',2);
hold on

ocralgwifig22 = cdfplot(ocralgwifi22);
set(ocralgwifig22,'Color',[.4 .5 .6],'linewidth',2);
hold on

ocralgwifig23 = cdfplot(ocralgwifi23);
set(ocralgwifig23,'Color','k','linewidth',2);
hold on

ocralgwifig24 = cdfplot(ocralgwifi24);
set(ocralgwifig24,'Color','r','linewidth',2);
hold on

ocralgwifig25 = cdfplot(ocralgwifi25);
set(ocralgwifig25,'Color','b','linewidth',2);
hold on

ocralgwifig26 = cdfplot(ocralgwifi26);
set(ocralgwifig26,'Color','g','linewidth',2);
hold on

legend('7:00 A.M. - English','10:00 A.M. - English', '1:30 P.M. - English','4:30 P.M. - English','7:30 P.M. - English', '12 A.M. - English','7:00 A.M. - Both','10:00 A.M. - Both', '1:30 P.M. - Both','4:30 P.M. - Both','7:30 P.M. - Both', '12 A.M. - Both','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for ocr Images - IITDWifi')