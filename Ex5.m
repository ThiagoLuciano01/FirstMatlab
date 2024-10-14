n = 10;
resultadon = factorial(n);
%disp(resultadon);
p = 3;
resultadop = factorial(p);
%disp(resultadop);
pn = 7;
resultadopn = factorial(pn);
%disp(resultadopn);
resAnalitico = 1/(resultadon/(resultadop*resultadopn));
disp("este é o resultado analitico:")
disp(resAnalitico);


valores = randperm(10, 3);
% Atribuir os valores aleatórios a 3 variáveis diferentes
a = valores(1);
b = valores(2);
c = valores(3);

linhas = 1e5;
arr = 10;
mat = randi([1 10], linhas, arr);
suc = 0;

for i = 1:linhas
    res = randperm(10, 3);
    if all(ismember([a, b, c], res(:)))
        suc = suc + 1;
    end
end

resSim = (suc/ linhas)
