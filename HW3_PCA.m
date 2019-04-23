% ANN-ML Assignment #3 Question #1 
% Atahan Kurttisi

disp('<a href = "https://github.com/AtahanK/Machine-Learning">Atahan Kurttisi GitHub Repository</a>')
disp('Principal Component Analysis')

features=[feature1 feature2 feature3 feature4];
mean_values=mean(features);
disp('Mean values for whole dataset:')
disp(mean_values)
features=features-mean_values; % Zero Mean Form 
covariance=cov(features); % It is also called Scatter Matrix
disp('Covariance matrix for whole dataset:')
disp(covariance)

[eigen_vectors,eigen_values]=eig(covariance);

disp('Eigen vectors matrix for whole dataset:')
disp(eigen_vectors)

disp('Eigen values matrix for whole dataset:')
disp(eigen_values)

%% Obtaining one dimensional data with only first principal component

A1=[eigen_vectors(:,4)];
 
for i=1:n
    y1(i,:)=A1'*features(i,:)';
end
figure(1)
plot(class,y1,'b*')
xlabel('Feature 1')
ylabel('Feature 1')

%% Obtaining two dimensional data with first and second principal components

A2=[eigen_vectors(:,4) eigen_vectors(:,3)];
 
for i=1:n
    y2(i,:)=A2'*features(i,:)';
end
figure(2)
scatter3(y2(:,1),y2(:,2),class,'b*')
xlabel('Feature 1')
ylabel('Feature 2')
title('Principles 1 and 2')

%% Obtaining two dimensional data with first and third principal components

A3=[eigen_vectors(:,4) eigen_vectors(:,2)];
 
for i=1:n
    y3(i,:)=A3'*features(i,:)';
end
figure(3)
scatter3(y3(:,1),y3(:,2),class,'b*')
xlabel('Feature 1')
ylabel('Feature 2')
title('Principles 1 and 3')

%% Obtaining two dimensional data with first and fourth principal components

A4=[eigen_vectors(:,4) eigen_vectors(:,1)];
 
for i=1:n
    y4(i,:)=A4'*features(i,:)';
end
figure(4)
scatter3(y4(:,1),y4(:,2),class,'b*')
xlabel('Feature 1')
ylabel('Feature 2')
title('Principles 1 and 4')

%% Obtaining two dimensional data with second and third principal components

A5=[eigen_vectors(:,3) eigen_vectors(:,2)];
 
for i=1:n
    y5(i,:)=A5'*features(i,:)';
end
figure(5)
scatter3(y5(:,1),y5(:,2),class,'b*')
xlabel('Feature 1')
ylabel('Feature 2')
title('Principles 2 and 3')

%% Obtaining two dimensional data with second and fourth principal components

A6=[eigen_vectors(:,3) eigen_vectors(:,1)];
 
for i=1:n
    y6(i,:)=A6'*features(i,:)';
end
figure(6)
scatter3(y6(:,1),y6(:,2),class,'b*')
xlabel('Feature 1')
ylabel('Feature 2')
title('Principles 2 and 4')

%% Obtaining two dimensional data with third and fourth principal components

A7=[eigen_vectors(:,2) eigen_vectors(:,1)];
 
for i=1:n
    y7(i,:)=A7'*features(i,:)';
end
figure(7)
scatter3(y7(:,1),y7(:,2),class,'b*')
xlabel('Feature 1')
ylabel('Feature 2')
title('Principles 3 and 4')