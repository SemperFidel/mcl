package ast.expression

import ast.SourceSpan

data class IfExpression(
    val condition: Expression,
    val thenBranch: BlockExpression,
    val elseBranch: BlockExpression,
    override val span: SourceSpan
) : Expression
