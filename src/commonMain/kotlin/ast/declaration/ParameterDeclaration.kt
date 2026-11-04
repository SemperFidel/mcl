package ast.declaration

import ast.Node
import ast.SourceSpan
import ast.type.TypeNode

data class ParameterDeclaration(
    val name: String,
    val type: TypeNode,
    override val span: SourceSpan
) : Node
