# Proyecto4Logica

?- derivada(ln(x/(x+1)),x,Y).
Y =  ((x+1)*1-x*(1+0))/(x+1)*(x+1)*1/(x/(x+1)) .

?- derivada(sen(exp(3*x)),x,Y).
Y = cos(exp(3*x))*(exp(3*x)*(3*1+x*0)) .

?- derivada(ln(sen((x+1)/x)),x,Y).
Y = cos((x+1)/x)*((x*(1+0)-(x+1)*1)/x*x)*1/sen((x+1)/x) .

?- derivada((x^5+x^3)/(x^2+1),x,Y).
Y =  ((x^2+1)*((5*x)^4*1+(3*x)^2*1)-(x^5+x^3)*((2*x)^1*1+0))/(x^2+1)*(x^2+1) .

?- derivada(arctan((x^2+1)^10),x,Y).
Y =  (10*(x^2+1))^9*((2*x)^1*1+0)/(1+(x^2+1)^10*(x^2+1)^10) .


