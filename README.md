# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code: failure to handle exceptions properly within `async` functions.  The `bug.dart` file shows the problematic code, where exceptions thrown during JSON decoding or other aspects of processing a successful API response are not always caught.

The `bugSolution.dart` file provides a solution that uses nested `try-catch` blocks to catch and handle potential exceptions more comprehensively.