package ast.expression

import ast.SourceSpan

data class CallExpression(
    val callee: Expression,
    val arguments: List<Argument>,
    override val span: SourceSpan
) : Expression