function [feature1 feature2 feature3 feature4] = getFeatures(features,truelabel,N)
feature1 = [];
feature2 = [];
feature3 = [];
feature4 = [];
    for i = 1:N
        if truelabel(:,i) == 1
            feature1 = [feature1 features(:,i)];
        elseif truelabel(:,i) == 2
            feature2 = [feature2 features(:,i)];
        elseif truelabel(:,i) == 3
            feature3 = [feature3 features(:,i)];
        else
            feature4 = [feature4 features(:,i)];
        end
    end
end