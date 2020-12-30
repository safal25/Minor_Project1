function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 

K = size(centroids, 1);


idx = zeros(size(X,1), 1);

J=zeros(K,1);

for i=1:size(X,1)
	for j=1:K
		J(j)=sum((X(i,:)-centroids(j,:)).^2);
	end
	[a,idx(i)]=min(J,[],1);
end
	



% =============================================================

end

