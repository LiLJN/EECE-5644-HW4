clc,
clear all,
C = 4;
N = [100 200 500 1000 2000 5000 100000];
[features100 labels100] = generateDataP1(N(1),C);
[features200 labels200] = generateDataP1(N(2),C);
[features500 labels500] = generateDataP1(N(3),C);
[features1000 labels1000] = generateDataP1(N(4),C);
[features2000 labels2000] = generateDataP1(N(5),C);
[features5000 labels5000] = generateDataP1(N(6),C);
[features_test labels_test] = generateDataP1(N(7),C);
for i = 1:N(1)
    idx = find(labels100(:,i) == 1);
    truelabel100(i) = idx;
end
for i = 1:N(2)
    idx = find(labels200(:,i) == 1);
    truelabel200(i) = idx;
end
for i = 1:N(3)
    idx = find(labels500(:,i) == 1);
    truelabel500(i) = idx;
end
for i = 1:N(4)
    idx = find(labels1000(:,i) == 1);
    truelabel1000(i) = idx;
end
for i = 1:N(5)
    idx = find(labels2000(:,i) == 1);
    truelabel2000(i) = idx;
end
for i = 1:N(6)
    idx = find(labels5000(:,i) == 1);
    truelabel5000(i) = idx;
end
for i = 1:N(7)
    idx = find(labels_test(:,i) == 1);
    truelabel_test(i) = idx;
end
[feature1 feature2 feature3 feature4] = getFeatures(features100,truelabel100,N(1));
[MAPestimate MAPerror] = getMAP(feature1,feature2,feature3,feature4);
%figure;
%h1_1 = histogram(feature1(1,:));


