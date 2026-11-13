# Lesson 05 — Structuring code with conditions

Fifth lesson of the capstone project **Library**. The program simulates the
main menu of the library application and uses conditional structures to
respond to the user's choice.

## Learning objectives

- Use comparison operators (`==`, `>`, `<`, `>=`, `<=`, `!=`)
- Control program flow with `if`, `else if` and `else`
- Combine conditions with logical operators (`&&`, `||`, `!`)
- Understand how C handles booleans (`0` is false, anything else is true)
- Replace long `if... else if` chains with a `switch` statement
- Read a single character from the user with `scanf` or `getchar`

## Key concepts

### Comparison operators

- `==` : equal to (do not confuse with `=`)
- `>` / `<` : greater than / less than
- `>=` / `<=` : greater than or equal / less than or equal
- `!=` : not equal to

### The `if`, `else if`, `else` structure

```c
if (age >= 18) {
    printf("Adult\n");
} else if (age > 4) {
    printf("Minor\n");
} else {
    printf("Toddler\n");
}
```
## Build and run
1. Clone the repository or download the ZIP:
```bash
git clone https://github.com/amoungui/lesson-05.git
```
2. Open library.slnx in Visual Studio.

3. Build with Ctrl+Shift+B.

4. Run with F5.

## Expected output
--- MENU BIBLIOTHEQUE ---
A. Quitter
B. Gerer les adherents
C. Gerer les livres
Faites votre choix : C
Acces au module de gestion des livres.

## Lessons

- ⬅️ [Lesson 04 — Arithmetic operators](https://github.com/amoungui/lesson-04)
- ➡️ Lesson 06 — *coming soon*