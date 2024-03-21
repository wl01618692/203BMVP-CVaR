function plotWeight2(w1, w2, symbol)
figure;
subplot(1,2,1)
w1 = round(w1'*100,1);
area(w1);
ylabel('Portfolio weight (%)')
xlabel('Port Number')
title('CVaR');
xlim([1 10])
ylim([0 100]);
legend(symbol);
subplot(1,2,2)
w2 = round(w2'*100,1);
area(w2);
ylabel('Portfolio weight (%)')
xlabel('Port Number')
title('Mean-Variance');
xlim([1 10])
ylim([0 100]);
legend(symbol);
end