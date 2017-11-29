%MATLAB Function - knnclassify
%Syntax
%class = knnclassify(sample,training,group)

%Sample Matrix
A = [50 60;
    7 2;
    13 12;
    100 20];

%Training Matrix
B = [1 0;
    200 30;
    19 10];

%Group Matrix
G = {'First Row';
    'Second Row';
    'Third Row'};

%Function 
class = knnclassify(A,B,G);

%Display result
disp('Result');
disp(class);
