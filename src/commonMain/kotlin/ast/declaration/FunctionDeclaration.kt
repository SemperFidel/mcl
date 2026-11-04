package ast.declaration

import ast.SourceSpan
import ast.expression.BlockExpression
import ast.type.TypeNode

data class FunctionDeclaration(
    override val name: String,
    override val span: SourceSpan,
    val parameters: List<ParameterDeclaration>,
    val returnType: TypeNode,
    val body: BlockExpression,
) : Declaration
