package ast.expression.literal

import ast.SourceSpan
import ast.expression.LiteralExpression

data class StringLiteral(
    val value: String,
    override val span: SourceSpan
) : LiteralExpression