package ast.type

import ast.SourceSpan

data class PrimitiveType(
    val kind: PrimitiveTypeKind,
    override val span: SourceSpan
) : TypeNode
