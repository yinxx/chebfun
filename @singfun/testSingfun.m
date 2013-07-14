%%
clear classes

a = .5; b = 1.5;
op = @(x) sin(1-x)./((1-x).^(b).*(1+x).^(a));
exponents = [-a, -b];
%exponents = [];
isSingEnd = [1,1];
singType = {'branch', 'branch'};
pref = [];
f = singfun( op, exponents, isSingEnd, singType, pref )
plot(f)
%%
imagf = imag(f)

%% 
realf = real(f)

%%
f = singfun( @(x) sin(2*pi*(x+1))./(x+1), [], [1 0], {'pole', 'pole'}, []  )
plotData(f)

%%
f = singfun( @(x) sin(x)./((1-x).^3.5.*(1+x).^.5), [], [1 1],{'branch', 'branch'}, [] );
g = singfun( @(x) cos(x)./(1-x), [], [1 1],{'branch', 'branch'}, [] );
s = f + g
xx = -.9:.01:.9;
error = feval(s, xx) - (feval(f, xx)+ feval( g, xx));
norm(error, inf )
plot(xx, error)

%%
f = singfun(@(x) 1./(1-x), [], [1 1], {'branch', 'branch'})
fp = diff(f);
xx = -.99:.01:.99;
error = feval(fp, xx) - 1./(1-xx).^2;
norm(error, inf )
plot(xx, error)

%%
a = 1;
f = singfun(@(x) sin(a*x)./(1-x).^2, [], [], [], [] );
fp = diff(f);
xx = -.99:.01:.99;
fpExact = @(x) a*cos(a*x)./(1-x).^2 + 2*sin(a*x)./(1-x).^3;
error = feval(fp, xx) - fpExact(xx);
norm(error, inf )
plot(xx, error)
 