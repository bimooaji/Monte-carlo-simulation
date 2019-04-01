n = 200;

for j = 1:n
    N = 600;
    d = 10;
    l = 8;
    Q = 0;
    for i = l:N
        x(i) = unifrnd(0,d,1);
        thet(i) = unifrnd(0,radtodeg(pi/2),1);
        T(i) = l*(cosd(thet(i)));
        if x(i) <= T(i)
            Q = Q+1;
            if i == N
                Q;
            end;
        else
            Q = Q+0;
        end
    end
    Q(j) = Q;
    phip(j) = (N/Q(j))*(2*l)/d;
end
j = 1:1:n;
phir(j) = 3.14;
rephi(j) = mean(phip);
rephi(1)

plot(j,phir,'black','LineWidth',0.3)
hold on
plot(j,phip,':r','LineWidth',1)
hold on
plot(j,rephi,':b','LineWidth',0.4)
xlabel('repeat')
ylabel('pi-value')
legend('pi-real','pi-predict','pi-mean')