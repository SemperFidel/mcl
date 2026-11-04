package ast.type

import ast.SourceSpan

data class ArrayType(
    val elementType: TypeNode,
    override val span: SourceSpan
) : TypeNode
