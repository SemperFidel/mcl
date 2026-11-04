package ast.statement

import ast.SourceSpan
import ast.expression.Expression

data class ExpressionStatement(
    val expression: Expression,
    override val span: SourceSpan
) : Statement
