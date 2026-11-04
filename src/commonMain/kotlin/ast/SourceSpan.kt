package ast

data class SourceSpan(
    val startOffset: Int,
    val endOffset: Int,
    val line: Int,
    val column: Int
)
