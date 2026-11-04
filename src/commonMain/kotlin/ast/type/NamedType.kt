package ast.type

import ast.SourceSpan

data class NamedType(
    val path: List<String>,
    override val span: SourceSpan
) : TypeNode
