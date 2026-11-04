package ast.expression.literal

import ast.SourceSpan
import ast.expression.LiteralExpression

data class BooleanLiteral(
    val value: Boolean,
    override val span: SourceSpan
) : LiteralExpression
