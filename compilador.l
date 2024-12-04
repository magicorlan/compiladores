%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "compilador.tab.h"
%}

%%  

"("                                            { return PAR_A; }
")"                                            { return PAR_C; }
"."                                             { return PUNTO;  }
","							      { return COMA;   }
";"                                             { return PUNTOYCOMA; }
"SI"                                           { return SI; }
"NOMBRE"                               { return NOMBRE; }
"PROGRAMA"                           { return PROGRAMA; }
"VARIABLES"                            { return VARIABLES; }
"INICIO"                                   { return INICIO; }
"ENTERO"                                 { return T_ENTERO; }
"FLOTANTE"				       { return T_FLOTANTE;  }
"CARACTER"					 { return T_CARACTER;    }
"MOSTRAR"	                         { return MOSTRAR; }
"LEER"						       { return LEER; }
"ITERAR"                                   { return ITERAR; }
"VECES"                                    { return VECES; }
"ENTONCES"                            { return ENTONCES; }
"SINO"							{ return SINO;  }
"FIN"                                        { return FIN; }
"::"						            { return DDPUNTO;	}
":="						          { return ASIGNACION;       }
"<"                                           { return MENORQ;   }
">"                                          { return MAYORQ;    }
"="                                           {  return IGUALDAD;     }
"<>"                                        { return DIFERENCIA;      }
"+"                                          { return MAS;            }
"-"                                           { return MENOS;       }
"*"                                           { return POR;     }
"/"                                           { return DIV;         }
"%"                                           { return MOD;   }
\"([^\\\"]|\\.)*\"                     {  return CADENA;   }
"_"[a-z0-9_]+					{ return IDENTIFICADOR; }
[-]?[1-9][0-9]*|" 0"                   { return ENTERO; }
[ \t]+                                      { /* consumiendo espacios */ }
\n                                           { yylineno++; /* consumiendo saltos de línea */ }
.                                              { /* ignorar */ }
%%

/* Esta función se llama cuando Flex llega al final del archivo */
int yywrap() {
    return 1;  // Devuelve 1 al final del archivo, lo que indica EOF
}





