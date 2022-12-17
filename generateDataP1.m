function [x label] = generateDataP1(N,C)
prior = randi([1 C],1,N);
label1 = (prior == 1);
label2 = (prior == 2);
label3 = (prior == 3);
label4 = (prior == 4);
figure, 
clf, 
label = [label1;label2;label3;label4];
mu = [[1;4;2],[4;3;1],[1;2;5],[4;1;5]];
c1 = [3 0 0;0 2 0;0 0 1];
c2 = [1 0 0;0 3 0;0 0 3];
c3 = [1 0 0;0 1 0;0 0 3];
c4 = [3 0 0;0 2 0;0 0 2];
sigma(:,:,1) = c1;
sigma(:,:,2) = c2;
sigma(:,:,3) = c3;
sigma(:,:,4) = c4;
for l = 1:4
    indl = find(label(l,:) == 1);
    n = length(indl);
    m = mu(:,l);
    c = sigma(:,:,l);
    x(:,indl) = mvnrnd(m,c,n)';
    if l == 1
        plot3(x(1,indl),x(2,indl),x(3,indl),'+','Color',[0 0.4470 0.7410]);
        grid on,
        hold on,
        axis equal,
    elseif l == 2
        plot3(x(1,indl),x(2,indl),x(3,indl),'o','Color',[0.9290 0.6940 0.1250]);
        hold on,
        axis equal,
    elseif l == 3
        plot3(x(1,indl),x(2,indl),x(3,indl),'x','Color',[0.4660 0.6740 0.1880]);
        hold on,
        axis equal,
    else
        plot3(x(1,indl),x(2,indl),x(3,indl),'*','Color',[0.6350 0.0780 0.1840]);
        hold on,
        axis equal,
    end
end
legend('Class 1','Class 2','Class 3','Class 4');
xlabel('X');
ylabel('Y');
zlabel('Z');
s = ['Distribution of ' num2str(C) ' classes for ' num2str(N) ' samples'];
title(s);
hold off;
end