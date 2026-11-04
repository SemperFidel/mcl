package ast.declaration

import ast.Node

sealed interface Declaration: Node {
    val name: String
}