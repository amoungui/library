# Lesson 03 — Declaring variables

Third lesson of the capstone project **Library**. The program records and
displays the basic information of a new library member (ID and current
number of loans).

## Learning objectives

- Name and type a variable (`int`, `float`, `double`, `const`)
- Declare, assign and initialize a variable
- Use constants (`const`) for values that must not change
- Display data with `printf` and format specifiers (`%d`, `%f`)
- Read user input with `scanf` (and remember the `&` operator)
- Apply these concepts to the library management project

## Key concepts

### Naming and typing a variable

- A variable name must start with a letter, contain no spaces or accents
  (only letters, digits and `_`).
- C is case-sensitive: `age` and `Age` are two different variables.
- By convention, use camelCase, e.g. `nombreDeVies`.

Main types:

- Integers: `int` (most common), `long`, `signed char`.
  Prefix with `unsigned` to allow only values `>= 0` and double the
  positive range.
- Floating-point numbers: `float` and `double` (most common).

### Declare, assign, initialize

```c
int nombreDeVies;          // declaration
nombreDeVies = 5;          // assignment
int vies = 5;              // initialization (recommended)
const int MAX_EMPRUNTS = 3; // constant
```
## Display and read data

```c
printf("Il vous reste %d vies\n", nombreDeVies); // display
int age = 0;
scanf("%d", &age);                               // read input
```
## Contents

File	Purpose
library.cpp	Program source code
library.slnx	Visual Studio solution
library.vcxproj	Visual Studio project
library.vcxproj.filters	File organization in the IDE
.gitignore	Files excluded from version control

## Build and run
1. Clone the repository or download the ZIP:
```bash
git clone https://github.com/amoungui/lesson-03.git
```
2. Open library.slnx in Visual Studio.

3. Build with Ctrl+Shift+B.

4. Run with F5.

## Expected output
Entrez l'identifiant de l'adherent : 42
Entrez le nombre d'emprunts actuels : 2

--- FICHE ADHERENT ---
ID Adherent : 42
Emprunts en cours : 2 / 5

## Lessons

- ⬅️ [Lesson 02 — Welcome message simulation](https://github.com/amoungui/lesson-02)
- ➡️ Lesson 04 — *coming soon*