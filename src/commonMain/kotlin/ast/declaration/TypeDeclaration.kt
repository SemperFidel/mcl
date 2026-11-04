package ast.declaration

import ast.SourceSpan

data class TypeDeclaration(
    override val name: String,
    override val span: SourceSpan,
): Declaration
