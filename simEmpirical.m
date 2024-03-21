function AssetScenarios = simEmpirical(ret,nScenario)
[nSample,nAsset] = size(ret);
u = zeros(nSample,nAsset);
for i = 1:nAsset
    u(:,i) = ksdensity(ret(:,i),ret(:,i),'function','cdf');
end

[rho, dof] = copulafit('t',u);
r = copularnd('t',rho,dof,nScenario);

AssetScenarios = zeros(nScenario,nAsset);
for i = 1:nAsset
    AssetScenarios(:,i) = ksdensity(ret(:,i),r(:,i),'function','icdf');
end
end