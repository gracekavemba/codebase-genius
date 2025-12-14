
import ast

def analyze_python_code(code):
    tree = ast.parse(code)
    functions = [n.name for n in ast.walk(tree) if isinstance(n, ast.FunctionDef)]
    return {
        "functions": functions,
        "description": "This file contains core logic for the application."
    }
