package ast.declaration

import ast.SourceSpan

data class ModuleDeclaration(
    override val name: String,
    override val span: SourceSpan,
    val declarations: List<Declaration>,
): Declaration
