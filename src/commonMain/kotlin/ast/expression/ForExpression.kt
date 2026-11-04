package ast.expression

import ast.SourceSpan

data class ForExpression(
    val variable: String,
    val iterable: Expression,
    val body: BlockExpression,
    override val span: SourceSpan
) : Expression
