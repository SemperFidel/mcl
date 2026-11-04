lexer grammar MclLexerRules;

COMMENT : '//' ~[\r\n]* -> channel(HIDDEN) ;

DOT      : '.' ;
COMMA    : ',' ;
COLON    : ':' ;
LBRACE   : '{' ;
RBRACE   : '}' ;
LBRACKET : '[' ;
RBRACKET : ']' ;
LPAREN   : '(' ;
RPAREN   : ')' ;
ASSIGN   : '=' ;

EQUAL     : '==';
NOT_EQUAL : '!=';
LESS_EQUAL: '<=';
GREATER_EQUAL: '>=';
LESS      : '<';
GREATER   : '>';
AND       : '&&';
OR        : '||';
NOT       : '!';
PLUS      : '+';
MINUS     : '-';
MULTIPLY  : '*';
DIVIDE    : '/';
MODULO    : '%';

FUNCTION : 'fun' ;
TYPE     : 'type' ;
IF       : 'if';
ELSE     : 'else';
FOR      : 'for';
IN       : 'in';
VAR      : 'var';

PRIMITIVETYPE
    : 'Int'
    | 'Decimal'
    | 'Boolean'
    | 'String'
    ;

BOOL   : 'true' | 'false' ;
DEC
    : [0-9]+ '.' [0-9]+ EXP?
    | '.' [0-9]+ EXP?
    | [0-9]+ EXP
    ;

fragment EXP
    : [eE] [+-]? [0-9]+
    ;

INT
    : [0-9]+
    ;
ID     : [a-zA-Z_][a-zA-Z0-9_-]* ;
STRING : '"' ( '\\"' | '\\\\' | ~["\\\r\n] )* '"' ;

WS : [ \t\r\n]+ -> skip ;