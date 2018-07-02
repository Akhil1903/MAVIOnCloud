ocralg3gg11 = cdfplot(ocralg3g11);
ylim([0 1.2]);
xlim([0 4500]);
set(ocralg3gg11,'LineStyle', '--','Color','y','linewidth',2);
hold on

ocralg3gg12 = cdfplot(ocralg3g12);
set(ocralg3gg12,'LineStyle', '--','Color',[.4 .5 .6],'linewidth',2);
hold on

ocralg3gg13 = cdfplot(ocralg3g13);
set(ocralg3gg13,'LineStyle', '--','Color','k','linewidth',2);
hold on

ocralg3gg14 = cdfplot(ocralg3g14);
set(ocralg3gg14,'LineStyle', '--','Color','r','linewidth',2);
hold on

ocralg3gg15 = cdfplot(ocralg3g15);
set(ocralg3gg15,'LineStyle', '--','Color','b','linewidth',2);
hold on

ocralg3gg16 = cdfplot(ocralg3g16);
set(ocralg3gg16,'LineStyle', '--','Color','g','linewidth',2);
hold on

ocralg3gg21 = cdfplot(ocralg3g21);
set(ocralg3gg21,'Color','y','linewidth',2);
hold on

ocralg3gg22 = cdfplot(ocralg3g22);
set(ocralg3gg22,'Color',[.4 .5 .6],'linewidth',2);
hold on

ocralg3gg23 = cdfplot(ocralg3g23);
set(ocralg3gg23,'Color','k','linewidth',2);
hold on

ocralg3gg24 = cdfplot(ocralg3g24);
set(ocralg3gg24,'Color','r','linewidth',2);
hold on

ocralg3gg25 = cdfplot(ocralg3g25);
set(ocralg3gg25,'Color','b','linewidth',2);
hold on

ocralg3gg26 = cdfplot(ocralg3g26);
set(ocralg3gg26,'Color','g','linewidth',2);
hold on

legend('7:00 A.M. - English','10:00 A.M. - English', '1:30 P.M. - English','4:30 P.M. - English','7:30 P.M. - English', '12 A.M. - English','7:00 A.M. - Both','10:00 A.M. - Both', '1:30 P.M. - Both','4:30 P.M. - Both','7:30 P.M. - Both', '12 A.M. - Both','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for ocr Images - 3g')