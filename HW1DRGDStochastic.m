% Atahan Kurttiþi 
% ANN-ML Homework #1.1.b
% Stochastic delta rule gradient descent algorithm 

w=[rand(1) rand(1) rand(1)];
maxiteration=200;
n=1; % Learning rate
k=0;
while (k<maxiteration)
    for i=1:3
        for d=1:a % a is number of samples
            output=logsig(w(1)*xbias(d)+w(2)*x1(d)+w(3)*x2(d)); %Sigmoid Function
            w(i)=w(i)+n*(t(d)-output)*output*(1-output)*x(d,i);
        end
    end
    k=k+1;
end
w