package ast.expression

import ast.SourceSpan

data class NameExpression(
    val path: List<String>,
    override val span: SourceSpan
) : Expression
