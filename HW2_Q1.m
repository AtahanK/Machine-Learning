% ANN-ML Assignment #2 Question #1 
% Atahan Kurttisi

disp('<a href = "https://github.com/AtahanK/Machine-Learning">Atahan Kurttisi GitHub Repository</a>')
class0=[];
class1=[];
class2=[];
[m n]=size(data);

%% Part a, Separating the classes from raw data

for i=1:m
    class_value=data(i,1);
    if class_value==0
        class0=[class0 ; data(i,:)];
    end
    if class_value==1
        class1=[class1 ; data(i,:)];
    end
    if class_value==2
        class2=[class2 ; data(i,:)];
    end
end

%% Part b, Calculating means and covariance matrices

cov0=cov(class0(:,2:5));
disp('Covariance matrix of class 0:')
disp(cov0)

cov1=cov(class1(:,2:5));
disp('Covariance matrix of class 1:')
disp(cov1)

cov2=cov(class2(:,2:5));
disp('Covariance matrix of class 2:')
disp(cov2)

mean0=mean(class0(:,2:5));
disp('Mean value of features of class 0:')
disp(mean0)

mean1=mean(class1(:,2:5));
disp('Mean value of features of class 1:')
disp(mean1)

mean2=mean(class2(:,2:5));
disp('Mean value of features of class 2:')
disp(mean2)

%% Part c, Plotting 2-combinations of features for each classes

% Class0 

figure(1)
plot(class0(:,2), class0(:,3), 'rx');
hold on
plot(class1(:,2), class1(:,3), 'b*');
hold on
plot(class2(:,2), class2(:,3), 'm+');
xlabel('Feature 1')
ylabel('Feature 2')
title('Features 1 and 2')
legend('Class 0','Class 1','Class 2','Location','northwest')

figure(2)
plot(class0(:,2), class0(:,4), 'rx');
hold on
plot(class1(:,2), class1(:,4), 'b*');
hold on
plot(class2(:,2), class2(:,4), 'm+');
xlabel('Feature 1')
ylabel('Feature 3')
title('Features 1 and 3')
legend('Class 0','Class 1','Class 2','Location','northeast')

figure(3)
plot(class0(:,2), class0(:,5), 'rx');
hold on
plot(class1(:,2), class1(:,5), 'b*');
hold on
plot(class2(:,2), class2(:,5), 'm+');
xlabel('Feature 1')
ylabel('Feature 4')
title('Features 1 and 4')
legend('Class 0','Class 1','Class 2','Location','northwest')

figure(4)
plot(class0(:,3), class0(:,4), 'rx');
hold on
plot(class1(:,3), class1(:,4), 'b*');
hold on
plot(class2(:,3), class2(:,4), 'm+');
xlabel('Feature 2')
ylabel('Feature 3')
title('Features 2 and 3')
legend('Class 0','Class 1','Class 2','Location','northeast')

figure(5)
plot(class0(:,3), class0(:,5), 'rx');
hold on
plot(class1(:,3), class1(:,5), 'b*');
hold on
plot(class2(:,3), class2(:,5), 'm+');
xlabel('Feature 2')
ylabel('Feature 4')
title('Features 2 and 4')
legend('Class 0','Class 1','Class 2','Location','northwest')

figure(6)
plot(class0(:,4), class0(:,5), 'rx');
hold on
plot(class1(:,4), class1(:,5), 'b*');
hold on
plot(class2(:,4), class2(:,5), 'm+');
xlabel('Feature 3')
ylabel('Feature 4')
title('Features 3 and 4')
legend('Class 0','Class 1','Class 2','Location','northeast')