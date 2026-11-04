package ast.statement

import ast.SourceSpan
import ast.expression.Expression

data class Assignment(
    val name: String,
    val value: Expression,
    override val span: SourceSpan
) : Statement
