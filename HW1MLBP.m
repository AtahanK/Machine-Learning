% Atahan Kurttiþi 
% ANN-ML Homework #1.2
% Multi-Layer Back Propagation 

maxiteration=200;
n=1; % Learning Rate
z=0; 
n_hid=3; % Number of hidden layers
n_out=2; % Number of outputs
n_input=3; % Number of inputs
w_hid=rand(n_input,n_hid); % Randomized weights for hidden layers
w_out=rand(n_hid,n_out); % Randomized weights for outputs

while (z<maxiteration)
    for d=1:a % a is the number of samples
        o_out=[];
        o_hid=[];
        s_out=[];
        s_hid=[];
        x=[xbias(d) x1(d) x2(d)]';
        o_hid=logsig(w_hid'*x);
        o_out=logsig(w_out'*o_hid);
        for k=1:n_out
            s_out(k)=o_out(k)*(1-o_out(k))*(t(d,k)-o_out(k));
        end
        s_out=s_out';
        for j=1:n_hid
            s_hid(j)=o_hid(j)*(1-o_hid(j))*(w_out(j,:)*s_out);
        end
        for j=1:n_out
            for i=1:n_input
                w_hid(i,j)=w_hid(i,j)+n*s_hid(j)*x(i);
            end
        end
        for k=1:n_out
            for j=1:n_hid
                w_out(j,k)=w_out(j,k)+n*s_out(k)*o_hid(j);
            end
        end
    end
    z=z+1;
end
w_hid
w_out

