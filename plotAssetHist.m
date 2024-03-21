function plotAssetHist(symbol,ret)
figure
nAsset = numel(symbol);
plotCol = 3;
plotRow = ceil(nAsset/plotCol);
for i = 1:nAsset
    subplot(plotRow,plotCol,i);
    histogram(ret(:,i));
    title(symbol{i});
end
end