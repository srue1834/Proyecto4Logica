% referencia: https://gist.github.com/tokkenno/8038482 

% derivada de una variable

derivada(X, X, 1).

% derivada de una constante

derivada(C,_,0) :-
	number(C).

derivada(C, X, 0) :- 
	atomic(C), 
	C\=X.

% funciones trigonometricas

derivada(sen(U),X,cos(U)*DU):- 
	derivada(U,X,DU).

derivada(cos(U),X,-sen(U)*DU):- 
	derivada(U,X,DU).

derivada(tan(U),X,  sec(U)*sec(U)*DU):- 
	derivada(U,X,DU).

derivada(arctan(U),X,  (DU / (1 + (U*U)))):- 
	derivada(U,X,DU).

% funcion exponencial y logaritmo natural 

derivada(exp(U),X,exp(U)*DU):- 
	derivada(U,X,DU).

derivada(ln(U),X,DU*1/U):- 
	derivada(U,X,DU).


derivada((U) ^ N, X, ((N*U) ^ NN)*DU) :- 
	derivada(U,X,DU),
	N > 0, 
	NN is N-1.

% operaciones

derivada(-U, X, -DU) :- 
	derivada(U, X, DU).

derivada(U + V, X, DU + DV) :- 
	derivada(U, X, DU), 
	derivada(V, X, DV).

derivada(U - V, X, DU - DV) :- 
	derivada(U, X, DU), 
	derivada(V, X, DV).

derivada(U * V, X, U * DV + V * DU) :- 
	derivada(U, X, DU), 
	derivada(V, X, DV).

derivada(U / V, X, (V * DU - U * DV) / V * V) :- 
	U \== 1, 
	derivada(U, X, DU), 
	derivada(V, X, DV).

derivada(1 / V, X, -DV / (V * V)) :- 
	derivada(V, X, DV).




