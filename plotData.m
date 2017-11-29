function plotData(X,Y)
%Plotting the Data
figure;
hold on;
nfr = find(Y==-1);
fr = find(Y==0);
ovr = find(Y==1);
plot(X(nfr,1),X(nfr,2),'rx','MarkerSize',8);
hold on;
plot(X(fr,1),X(fr,2),'co','MarkerSize',8);
plot(X(ovr,1),X(ovr,2),'gd','MarkerSize',8);
hold off;
end