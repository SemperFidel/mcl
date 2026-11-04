package ast.statement

import ast.SourceSpan
import ast.expression.Expression
import ast.type.TypeNode

data class VariableDeclaration(
    val name: String,
    val declaredType: TypeNode?,
    val initializer: Expression,
    override val span: SourceSpan
) : Statement
