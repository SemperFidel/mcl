package ast.expression

import ast.SourceSpan
import ast.statement.Statement

data class BlockExpression(
    val statements: List<Statement>,
    val result: Expression,
    override val span: SourceSpan
) : Expression
