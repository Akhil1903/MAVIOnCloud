ocralgjiog11 = cdfplot(ocralgjio11);
ylim([0 1.2]);
xlim([0 3500]);
set(ocralgjiog11,'LineStyle', '--','Color','y','linewidth',2);
hold on

ocralgjiog12 = cdfplot(ocralgjio12);
set(ocralgjiog12,'LineStyle', '--','Color',[.4 .5 .6],'linewidth',2);
hold on

ocralgjiog13 = cdfplot(ocralgjio13);
set(ocralgjiog13,'LineStyle', '--','Color','k','linewidth',2);
hold on

ocralgjiog14 = cdfplot(ocralgjio14);
set(ocralgjiog14,'LineStyle', '--','Color','r','linewidth',2);
hold on

ocralgjiog15 = cdfplot(ocralgjio15);
set(ocralgjiog15,'LineStyle', '--','Color','b','linewidth',2);
hold on

ocralgjiog16 = cdfplot(ocralgjio16);
set(ocralgjiog16,'LineStyle', '--','Color','g','linewidth',2);
hold on

ocralgjiog21 = cdfplot(ocralgjio21);
set(ocralgjiog21,'Color','y','linewidth',2);
hold on

ocralgjiog22 = cdfplot(ocralgjio22);
set(ocralgjiog22,'Color',[.4 .5 .6],'linewidth',2);
hold on

ocralgjiog23 = cdfplot(ocralgjio23);
set(ocralgjiog23,'Color','k','linewidth',2);
hold on

ocralgjiog24 = cdfplot(ocralgjio24);
set(ocralgjiog24,'Color','r','linewidth',2);
hold on

ocralgjiog25 = cdfplot(ocralgjio25);
set(ocralgjiog25,'Color','b','linewidth',2);
hold on

ocralgjiog26 = cdfplot(ocralgjio26);
set(ocralgjiog26,'Color','g','linewidth',2);
hold on

legend('7:00 A.M. - English','10:00 A.M. - English', '1:30 P.M. - English','4:30 P.M. - English','7:30 P.M. - English', '12 A.M. - English','7:00 A.M. - Both','10:00 A.M. - Both', '1:30 P.M. - Both','4:30 P.M. - Both','7:30 P.M. - Both', '12 A.M. - Both','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for ocr Images - Jio')