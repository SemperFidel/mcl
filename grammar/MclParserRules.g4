parser grammar MclParserRules;

options {
    tokenVocab = MclLexerRules;
}

module
    : ID COLON LBRACE moduleStatement* RBRACE
    ;

moduleStatement
    : typeDeclaration
    | module
    | assignment
    | funcDeclaration
    ;

funcDeclaration
    : FUNCTION ID LPAREN argDeclarationList? RPAREN COLON typeReference block
    ;

typeDeclaration
    : TYPE ID COLON LBRACE fieldDeclaration* RBRACE
    ;

fieldDeclaration
    : ID COLON typeReference
    ;

argDeclarationList
    : argDeclaration (COMMA argDeclaration)*
    ;

argDeclaration
    : ID COLON typeReference
    ;

typeReference
    : primitiveType
    | qualifiedName
    | LBRACKET typeReference RBRACKET
    ;

assignment
    : ID ASSIGN expression
    ;

secondaryExpression
    : logicalOrExpression
    ;

logicalOrExpression
    : logicalAndExpression (OR logicalAndExpression)*
    ;

logicalAndExpression
    : equalityExpression (AND equalityExpression)*
    ;

equalityExpression
    : comparisonExpression ((EQUAL | NOT_EQUAL) comparisonExpression)*
    ;

comparisonExpression
    : additiveExpression
      ((LESS | GREATER | LESS_EQUAL | GREATER_EQUAL)
      additiveExpression)*
    ;

additiveExpression
    : multiplicativeExpression ((PLUS | MINUS) multiplicativeExpression)*
    ;

multiplicativeExpression
    : unaryExpression ((MULTIPLY | DIVIDE | MODULO) unaryExpression)*
    ;

unaryExpression
    : (NOT | MINUS) unaryExpression
    | expression
    ;

expression
    : literal
    | objectLiteral
    | functionCall
    | arrayCreation
    | qualifiedName
    | conditionalExpression
    | forExpression
    | LPAREN secondaryExpression RPAREN
    ;

variableDeclaration
    : VAR ID (COLON typeReference)? ASSIGN expression
    ;

expressionStatement
    : functionCall
    ;

conditionalExpression
    : IF LPAREN expression RPAREN block
      ELSE (conditionalExpression | block)
    ;

forExpression
    : FOR LPAREN ID IN expression RPAREN block
    ;

arrayItem
    : expression
    ;

arrayItemList
    : arrayItem (COMMA arrayItem)*
    ;

objectLiteral
    : LBRACE fieldAssignment* RBRACE
    ;

functionCall
    : qualifiedName LPAREN argAssignmentList? RPAREN
    ;

fieldAssignment
    : ID ASSIGN expression
    ;

argAssignmentList
    : argAssignment (COMMA argAssignment)*
    ;

argAssignment
    : ID ASSIGN expression
    ;

arrayCreation
    : LBRACKET arrayItemList? RBRACKET
    ;

block
    : LBRACE blockStatement* expression RBRACE
    ;

blockStatement
    : variableDeclaration
    | assignment
    | expressionStatement
    ;

literal
    : INT
    | DEC
    | STRING
    | BOOL
    ;

qualifiedName
    : ID (DOT ID)*
    ;

primitiveType
    : PRIMITIVETYPE
    ;