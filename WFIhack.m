function WFIhack(x)
M = dlmread('trainhack1.csv',',',2,0);

X = M(:,1);
Y = M(:,3);
plot(X,Y,'bx');

m = length(X);
X = [ones(m,1) X];
%theta = zeros(2,1);
theta = [1;2];

h = X*theta;

J = (1/(2*m))*sum((h-Y) .^ 2);  

num_iter = 500;
alpha = 0.001;

for iter = 1:num_iter
  h = X*theta;
  theta = theta - alpha*(1/m)*(X' * (h-Y));
end

hold on;
plot(X(:,2),X*theta,'-');
legend('training data','linear regression');
hold off;

fprintf('The fruit is in store from %d days\n',round([1 X] * theta));


