package ast.expression

import ast.Node
import ast.SourceSpan

data class ObjectField(
    val name: String,
    val value: Expression,
    override val span: SourceSpan
) : Node
