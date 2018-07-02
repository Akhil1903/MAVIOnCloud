ocralgairtelg11 = cdfplot(ocralgairtel11);
ylim([0 1.2]);
xlim([0 4500]);
set(ocralgairtelg11,'LineStyle', '--','Color','y','linewidth',2);
hold on

ocralgairtelg12 = cdfplot(ocralgairtel12);
set(ocralgairtelg12,'LineStyle', '--','Color',[.4 .5 .6],'linewidth',2);
hold on

ocralgairtelg13 = cdfplot(ocralgairtel13);
set(ocralgairtelg13,'LineStyle', '--','Color','k','linewidth',2);
hold on

ocralgairtelg14 = cdfplot(ocralgairtel14);
set(ocralgairtelg14,'LineStyle', '--','Color','r','linewidth',2);
hold on

ocralgairtelg15 = cdfplot(ocralgairtel15);
set(ocralgairtelg15,'LineStyle', '--','Color','b','linewidth',2);
hold on

ocralgairtelg16 = cdfplot(ocralgairtel16);
set(ocralgairtelg16,'LineStyle', '--','Color','g','linewidth',2);
hold on

ocralgairtelg21 = cdfplot(ocralgairtel21);
set(ocralgairtelg21,'Color','y','linewidth',2);
hold on

ocralgairtelg22 = cdfplot(ocralgairtel22);
set(ocralgairtelg22,'Color',[.4 .5 .6],'linewidth',2);
hold on

ocralgairtelg23 = cdfplot(ocralgairtel23);
set(ocralgairtelg23,'Color','k','linewidth',2);
hold on

ocralgairtelg24 = cdfplot(ocralgairtel24);
set(ocralgairtelg24,'Color','r','linewidth',2);
hold on

ocralgairtelg25 = cdfplot(ocralgairtel25);
set(ocralgairtelg25,'Color','b','linewidth',2);
hold on

ocralgairtelg26 = cdfplot(ocralgairtel26);
set(ocralgairtelg26,'Color','g','linewidth',2);
hold on

legend('7:00 A.M. - English','10:00 A.M. - English', '1:30 P.M. - English','4:30 P.M. - English','7:30 P.M. - English', '12 A.M. - English','7:00 A.M. - Both','10:00 A.M. - Both', '1:30 P.M. - Both','4:30 P.M. - Both','7:30 P.M. - Both', '12 A.M. - Both','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for ocr Images - Airtel4G')