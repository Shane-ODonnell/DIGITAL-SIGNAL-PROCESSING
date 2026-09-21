function xVals = UnitImpulseSeq(n,Nlow,Nhigh)
    xIndices = Nlow:1:Nhigh;
    xVals = zeros(1,length(xIndices));
    xVals(find(xIndices-n==0))=1;
end