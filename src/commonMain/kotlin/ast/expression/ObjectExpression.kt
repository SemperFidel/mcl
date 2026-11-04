package ast.expression

import ast.SourceSpan

data class ObjectExpression(
    val fields: List<ObjectField>,
    override val span: SourceSpan
) : Expression
