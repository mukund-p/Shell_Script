# Shell_Script_Basics

## What is Shell Scripting?
Shell scripting is writing a series of commands for the shell (command-line interpreter) to execute automatically.  
It helps automate repetitive tasks, manage system operations, and simplify workflows.

---

## Common Shells
> **Bash**:  
> The most commonly used Linux shell (Bourne Again SHell).

> **Zsh**:  
> An extended version of Bash with additional features.

> **Sh**:  
> The original Bourne shell.

---

## Basic Components of a Shell Script

> **Shebang (`#!`)**:  
> The first line in a shell script that tells the system which interpreter to use.  
> Example:  
> ```bash
> #!/bin/bash
> ```

> **Comments**:  
> Anything following `#` is a comment and is ignored by the shell.  
> Example:  
> ```bash
> # This is a comment
> ```

> **Variables**:  
> Store values in a script.  
> Example:  
> ```bash
> NAME="Mukund"
> echo "Hello, $NAME"
> ```

> **Conditional Statements**:  
> Perform different actions based on conditions.  
> Example:  
> ```bash
> if [ "$NAME" == "Mukund" ]; then
>   echo "Welcome Mukund!"
> else
>   echo "Who are you?"
> fi
> ```

> **Loops**:  
> Repeat a block of code multiple times.  
> Example:  
> ```bash
> for i in 1 2 3
> do
>   echo "Number $i"
> done
> ```

> **Functions**:  
> Group commands into reusable blocks.  
> Example:  
> ```bash
> greet() {
>   echo "Hello, Mukund!"
> }
> greet
> ```

---

## How to Run a Shell Script
1. Create a file with `.sh` extension.  
   Example: `script.sh`
   
2. Make the script executable:  
   ```bash
   chmod +x script.sh
