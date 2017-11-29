
m = dlmread('trainhack1.csv',',',2,0);

X = m(:,[1,3]);
Y = m(:,4);


%Plotting the Data
plotData(X,Y);
%assigning some labels
hold on;
xlabel('Ethylene Concentration');
ylabel('Days');
legend('Fresh','Not Fresh','Over Riped');
hold off;


sz = length(X);

X = [ones(sz,1) X];
theta = zeros(3,1);

h = 1 ./ (1+exp(-X*theta));

J = (1/(sz))*sum(-Y .* log(h) - (1-Y) .* log(1-h));


num_iter = 500;
alpha = 0.01;
for i = 1 : num_iter
  h = 1 ./ (1+exp(-X*theta));
  theta = theta - alpha*(1/sz)*sum(X' * (h-Y));
end

theta

plotDecisionBoundary(theta,X,Y);