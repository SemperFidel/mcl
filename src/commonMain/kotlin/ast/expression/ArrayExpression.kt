package ast.expression

import ast.SourceSpan

data class ArrayExpression(
    val elements: List<Expression>,
    override val span: SourceSpan
) : Expression
