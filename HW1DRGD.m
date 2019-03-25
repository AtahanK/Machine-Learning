% Atahan Kurttiþi 
% ANN-ML Homework #1.1.a
% Delta rule gradient descent algorithm 

w=[rand(1) rand(1) rand(1)];
maxiteration=200;
n=1; % Learning rate
k=0;
while (k<maxiteration)
    for i=1:3
        for d=1:a
            deltaw=0;
            output=logsig(w(1)*xbias(d)+w(2)*x1(d)+w(3)*x2(d)); %Sigmoid Function
            deltaw=deltaw+n*(t(d)-output)*output*(1-output)*x(d,i);
            w(i)=w(i)+deltaw;
        end
        end
    k=k+1;
end
w