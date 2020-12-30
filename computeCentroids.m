function centroids = computeCentroids(X, idx, K)

[m n] = size(X);

centroids = zeros(K, n);





for i=1:K
	count=0;
	sum=zeros(1,n);
	for j=1:m
		if (idx(j)==i)
			count=count+1;
			sum=sum+X(j,:);
		end
	end
	if (count==0)
		count=0;
	else
		centroids(i,:)=sum/count;
	end
end






% =============================================================


end

