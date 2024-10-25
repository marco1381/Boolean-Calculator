# Boolean Calculator
 This project is a Boolean logic calculator that allows users to perform operations like AND, OR, NOT, XOR on binary inputs.

## Task: Create Flex and Bison files to generate a post-fix notation calculator for Boolean algebra.

The calculator should be able to handle Boolean expressions with the input values `TRUE` and `FALSE`, together with the operators `AND` (`&`), `OR` (`|`), and `NOT` (`!`).

The program should accept keyboard input and exit on the end-of-file character (CTRL+D).

## Technical Specification:

- **Calculations** happen whenever a newline character is read (i.e., when enter is pressed).
- The input accepted should:
  - cover both capital and lower-case letters for `TRUE` and `FALSE`,
  - also accept `0` for `FALSE` and `1` for `TRUE`.
  - accept only the symbols `&`, `|`, and `!` to denote `AND`, `OR`, and `NOT`, respectively.

The following are examples of valid input values: 
- `TrUe`, `fALSE`, `True`, `false`, `truE`, `fAlSe`, `TRUE`, `FALSE`, `true`, `0`, `1`.

The following are all valid operators:
- `&`, `|`, `!`.

- The compiler should display a **generic error message** if it is unable to parse the input.
- **Output** should simply be the answer to the expression: `TRUE` or `FALSE` (Note: The answers should only be one of these exact strings, in capital letters).

### Examples:

**We wish to calculate `TRUE AND FALSE`**

- **INPUT**: `TRUE FALSE &`
- **OUTPUT**: `FALSE`

**We wish to calculate `TRUE OR FALSE`**

- **INPUT**: `true 0 |`
- **OUTPUT**: `TRUE`

**We wish to calculate `NOT TRUE`**

- **INPUT**: `1!`
- **OUTPUT**: `FALSE`

**We wish to calculate `NOT(TRUE AND FALSE) OR FALSE`**

- **INPUT**: `tRuE FaLsE & ! fAlSe |`
- **OUTPUT**: `TRUE`

## Additional Notes:

- There are no Boolean primitives in C, but you can use integers (`int`) or characters (`char`) to represent these.
