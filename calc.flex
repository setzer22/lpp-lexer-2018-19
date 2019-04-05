/* Ejemplo JFlex para la practica de DAOO 2019*/

%%

%class EjemploDAOO
%standalone
%unicode

Espacio = [ ]
SaltoLinea = \n\r?
Numero = (0|[1-9][0-9]*)
Identificador = [a-zA-Z_-]{3,16}

%%
{Numero} {
   System.out.println("Numero encontrado: "+yytext());
 }
{Identificador} {
  System.out.println("Identificador encontrado: "+yytext());
}
{Espacio} {
  System.out.println("ESPACIO encontrado");
}
{SaltoLinea} {
  System.out.println("Salto Linea encontrado");
}
[^] {
  System.out.println("Error leyendo: "+yytext());
}
