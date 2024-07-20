# Formulas in Excel
___
- Excel formulas are essential tools for data analysis, 
allowing you to perform a wide range of calculations and data manipulations. 

### Tips for Using Formulas

- **Use Cell References**: Instead of typing values directly into your formulas, use cell references. This makes your formulas dynamic and easier to update.
- **Use Named Ranges**: Name your ranges to make your formulas easier to read and manage.
- **Error Handling**: Use error handling functions like `IFERROR` to manage errors in your formulas gracefully.
- **Absolute vs. Relative References**: Use `$` to make references absolute (e.g., `$A$1`) to prevent them from changing when copying formulas.
- **Formula Auditing**: Use Excel’s formula auditing tools to trace precedents and dependents and ensure your formulas are correct.


### Basic Formulas

1. **SUM**
   - Adds all the numbers in a range.
   - `=SUM(A1:A10)`

2. **AVERAGE**
   - Calculates the average of the numbers in a range.
   - `=AVERAGE(A1:A10)`

3. **COUNT**
   - Counts the number of cells that contain numbers.
   - `=COUNT(A1:A10)`

4. **MAX**
   - Returns the largest number in a range.
   - `=MAX(A1:A10)`

5. **MIN**
   - Returns the smallest number in a range.
   - `=MIN(A1:A10)`

### Logical Formulas

1. **IF**
   - Checks whether a condition is met, and returns one value if true and another if false.
   - `=IF(A1>10, "Greater", "Lesser")`

2. **AND**
   - Returns TRUE if all arguments are TRUE.
   - `=AND(A1>10, B1<5)`

3. **OR**
   - Returns TRUE if any argument is TRUE.
   - `=OR(A1>10, B1<5)`

4. **NOT**
   - Reverses the logic of its argument.
   - `=NOT(A1>10)`

### Lookup and Reference Formulas

1. **VLOOKUP**
   - Searches for a value in the first column of a range and returns a value in the same row from a specified column.
   - `=VLOOKUP(A1, B1:C10, 2, FALSE)`

2. **HLOOKUP**
   - Searches for a value in the top row of a range and returns a value in the same column from a specified row.
   - `=HLOOKUP(A1, A1:E5, 3, FALSE)`

3. **INDEX**
   - Returns the value of a cell in a specified row and column.
   - `=INDEX(A1:C10, 2, 3)`

4. **MATCH**
   - Searches for a value in a range and returns the relative position of the value.
   - `=MATCH(A1, B1:B10, 0)`

5. **OFFSET**
   - Returns a reference to a range that is a specified number of rows and columns from a cell or range of cells.
   - `=OFFSET(A1, 3, 1)`

### Text Formulas

1. **CONCATENATE** (or `CONCAT` in newer versions)
   - Joins two or more text strings into one string.
   - `=CONCATENATE(A1, " ", B1)` or `=CONCAT(A1, " ", B1)`

2. **LEFT**
   - Returns the first character or characters in a text string based on the number of characters specified.
   - `=LEFT(A1, 3)`

3. **RIGHT**
   - Returns the last character or characters in a text string based on the number of characters specified.
   - `=RIGHT(A1, 3)`

4. **MID**
   - Returns a specific number of characters from a text string starting at the position you specify.
   - `=MID(A1, 2, 3)`

5. **LEN**
   - Returns the number of characters in a text string.
   - `=LEN(A1)`

### Date and Time Formulas

1. **TODAY**
   - Returns the current date.
   - `=TODAY()`

2. **NOW**
   - Returns the current date and time.
   - `=NOW()`

3. **DATEDIF**
   - Calculates the difference between two dates.
   - `=DATEDIF(A1, B1, "D")` (where "D" is days, "M" is months, "Y" is years)

4. **DAY**
   - Returns the day of the month from a date.
   - `=DAY(A1)`

5. **MONTH**
   - Returns the month from a date.
   - `=MONTH(A1)`

6. **YEAR**
   - Returns the year from a date.
   - `=YEAR(A1)`

### Financial Formulas

1. **PMT**
   - Calculates the payment for a loan based on constant payments and a constant interest rate.
   - `=PMT(rate, nper, pv)`

2. **FV**
   - Calculates the future value of an investment based on periodic, constant payments and a constant interest rate.
   - `=FV(rate, nper, pmt, [pv], [type])`

3. **NPV**
   - Calculates the net present value of an investment based on a series of periodic cash flows and a discount rate.
   - `=NPV(rate, value1, [value2], ...)`

4. **IRR**
   - Calculates the internal rate of return for a series of cash flows.
   - `=IRR(values, [guess])`

### Advanced Formulas

1. **ARRAYFORMULA** (for Google Sheets, similar concept can be done with `Ctrl+Shift+Enter` in Excel)
   - Performs calculations on a range of cells and returns an array result.
   - `=ARRAYFORMULA(A1:A10 * B1:B10)`

2. **SUMIF**
   - Adds the cells specified by a given condition or criteria.
   - `=SUMIF(A1:A10, ">10", B1:B10)`

3. **COUNTIF**
   - Counts the number of cells that meet a condition.
   - `=COUNTIF(A1:A10, ">10")`

4. **SUMPRODUCT**
   - Multiplies corresponding elements in the given arrays, and returns the sum of those products.
   - `=SUMPRODUCT(A1:A10, B1:B10)`

