package ast.expression.literal

import ast.SourceSpan
import ast.expression.LiteralExpression

data class DecimalLiteral(
    val value: Double,
    override val span: SourceSpan
) : LiteralExpression