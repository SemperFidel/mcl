package ast.expression.literal

import ast.SourceSpan
import ast.expression.LiteralExpression

data class IntegerLiteral(
    val value: Long,
    override val span: SourceSpan
) : LiteralExpression
