# Unhandled Exception in Asynchronous Dart Function

This repository demonstrates a common error in Dart asynchronous programming: improper exception handling within an asynchronous function. The code fetches data from a remote API.  The `bug.dart` file shows the original code with insufficient exception handling.  The `bugSolution.dart` file provides a corrected version with improved error management. 

**Problem:**
The original code uses a `try-catch` block, but doesn't handle the exception appropriately, leading to potential application crashes or silent failures.  The `rethrow` is useful to handle the exception later.

**Solution:**
The improved code uses a `try-catch` block with better error handling. The error is handled by printing to console, but further actions can be added (e.g., displaying an error message to the user, retrying the request, or logging the error). The code does not hide any errors from the user or the application.