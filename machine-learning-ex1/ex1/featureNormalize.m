function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

size_data = X(:,1);
mean_size = mean(size_data);
std_size = std(size_data);
X_size = (size_data - mean_size)/std_size;

bedroom_data = X(:,2);
mean_bedroom = mean(bedroom_data);
std_bedroom = std(bedroom_data);
X_bedroom = (bedroom_data - mean_bedroom)/std_bedroom;

mu = [mean_size mean_bedroom];
sigma = [std_size std_bedroom];
X_norm = [X_size X_bedroom];


% ============================================================

end
