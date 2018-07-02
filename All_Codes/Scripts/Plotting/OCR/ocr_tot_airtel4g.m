ocrtotairtelg11 = cdfplot(ocrtotairtel11);
ylim([0 1.2]);
xlim([0 8000]);
set(ocrtotairtelg11,'LineStyle', '--','Color','y','linewidth',2);
hold on

ocrtotairtelg12 = cdfplot(ocrtotairtel12);
set(ocrtotairtelg12,'LineStyle', '--','Color',[.4 .5 .6],'linewidth',2);
hold on

ocrtotairtelg13 = cdfplot(ocrtotairtel13);
set(ocrtotairtelg13,'LineStyle', '--','Color','k','linewidth',2);
hold on

ocrtotairtelg14 = cdfplot(ocrtotairtel14);
set(ocrtotairtelg14,'LineStyle', '--','Color','r','linewidth',2);
hold on

ocrtotairtelg15 = cdfplot(ocrtotairtel15);
set(ocrtotairtelg15,'LineStyle', '--','Color','b','linewidth',2);
hold on

ocrtotairtelg16 = cdfplot(ocrtotairtel16);
set(ocrtotairtelg16,'LineStyle', '--','Color','g','linewidth',2);
hold on

ocrtotairtelg21 = cdfplot(ocrtotairtel21);
ylim([0 1.2]);
xlim([0 8000]);
set(ocrtotairtelg21,'Color','y','linewidth',2);
hold on

ocrtotairtelg22 = cdfplot(ocrtotairtel22);
set(ocrtotairtelg22,'Color',[.4 .5 .6],'linewidth',2);
hold on

ocrtotairtelg23 = cdfplot(ocrtotairtel23);
set(ocrtotairtelg23,'Color','k','linewidth',2);
hold on

ocrtotairtelg24 = cdfplot(ocrtotairtel24);
set(ocrtotairtelg24,'Color','r','linewidth',2);
hold on

ocrtotairtelg25 = cdfplot(ocrtotairtel25);
set(ocrtotairtelg25,'Color','b','linewidth',2);
hold on

ocrtotairtelg26 = cdfplot(ocrtotairtel26);
set(ocrtotairtelg26,'Color','g','linewidth',2);
hold on

%legend('7:00 A.M. - Both','10:00 A.M. - Both', '1:30 P.M. - Both','4:30 P.M. - Both','7:30 P.M. - Both', '12 A.M. - Both','Location','SouthEast');
legend('7:00 A.M. - English','10:00 A.M. - English', '1:30 P.M. - English','4:30 P.M. - English','7:30 P.M. - English', '12 A.M. - English,7:00 A.M. - Both','10:00 A.M. - Both', '1:30 P.M. - Both','4:30 P.M. - Both','7:30 P.M. - Both', '12 A.M. - Both','Location','SouthEast');

xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Total Time for ocr Images - Airtel4G')