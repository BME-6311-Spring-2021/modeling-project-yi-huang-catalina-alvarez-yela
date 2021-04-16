t = 1:1:120;
T = 1:1:144;
Data1 = readtable("D:\BME2021Spring\BME 6311\problem sets\ModelProject\Initial.xlsx");
Data2 = readtable("D:\BME2021Spring\BME 6311\problem sets\ModelProject\Normal.xlsx");
Data3 = readtable("D:\BME2021Spring\BME 6311\problem sets\ModelProject\Stimulated.xlsx");

Initial = Data1.Variables;
Normal = Data2.Variables;
Stimulated = Data3.Variables;

figure
plot(t,Initial(1:120,2),'Color','k','LineWidth',1);
hold on
plot(t,Normal(1:120,2),'Color','r','LineWidth',1);
hold on
plot(t,Stimulated(1:120,2),'Color','b','LineWidth',1);

xlabel("Time (hr)","FontSize",14);
ylabel("Number of bacteria","FontSize",14);
title("The number of bacteria with time","FontSize",16);
legend({"Initial, no cytokine","Normal cytokines","Stimulated cytokines"},"FontSize",14);

figure
plot(t,Initial(1:120,3),'Color','k','LineWidth',1);
hold on
plot(t,Normal(1:120,3),'Color','r','LineWidth',1);
hold on
plot(t,Stimulated(1:120,3),'Color','b','LineWidth',1);

xlabel("Time (hr)","FontSize",14);
ylabel("Number of neutrophils","FontSize",14);
title("The number of neutrophils with time","FontSize",16);
legend({"Initial, no cytokine","Normal cytokines","Stimulated cytokines"},"FontSize",14);

figure
plot(T,Initial(1:144,4),'Color','k','LineWidth',1);
hold on
plot(T,Normal(1:144,4),'Color','r','LineWidth',1);
hold on
plot(T,Stimulated(1:144,4),'Color','b','LineWidth',1);

xlabel("Time (hr)","FontSize",14);
ylabel("Number of macrophages","FontSize",14);
title("The number of macrophages with time","FontSize",16);
legend({"Initial, no cytokine","Normal cytokines","Stimulated cytokines"},"FontSize",14);