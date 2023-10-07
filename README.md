# Mojo Example: Holiday Calculations
This repository contains example code using Mojo and Python to calculate various New York Stock Exchange (NYSE) holidays.

The NYSE holidays were chosen because the Good Friday holiday that is observed is based off the complex calculations to determine Easter Sunday and the code demonstrates the interoperability of Mojo and PyMath functionality.

Additionally, this example code also demonstrates the usage of:

- alias
- tuples
- for loop
- assert_true
- Python object conversion to integer

## Instructions

To run the sample code, assuming that you have Mojo already installed, navigate to the directory that contains `main.mojo` and execute `mojo main.mojo`. 

You should get output like the output below.

```bash
$ mojo main.mojo

NYSE holidays for: 2023
=======================

New Years Day: 2-JAN-2023 mm: 1 dd: 2 yyyy: 2023
Martin Luther King Day: 16-JAN-2023 mm: 1 dd: 16 yyyy: 2023
President's Day: 20-FEB-2023 mm: 2 dd: 20 yyyy: 2023
Good Friday: 7-APR-2023 mm: 4 dd: 7 yyyy: 2023
Memorial Day: 29-MAY-2023 mm: 5 dd: 29 yyyy: 2023
Juneteenth: 19-JUN-2023 mm: 6 dd: 19 yyyy: 2023
Independence Day: 4-JUL-2023 mm: 7 dd: 4 yyyy: 2023
Labor Day: 4-SEP-2023 mm: 9 dd: 4 yyyy: 2023
Thanksgiving Day: 23-NOV-2023 mm: 11 dd: 23 yyyy: 2023
Christmas Day: 25-DEC-2023 mm: 12 dd: 25 yyyy: 2023


NYSE holidays for: 2024
=======================

New Years Day: 1-JAN-2024 mm: 1 dd: 1 yyyy: 2024
Martin Luther King Day: 15-JAN-2024 mm: 1 dd: 15 yyyy: 2024
President's Day: 19-FEB-2024 mm: 2 dd: 19 yyyy: 2024
Good Friday: 29-MAR-2024 mm: 3 dd: 29 yyyy: 2024
Memorial Day: 27-MAY-2024 mm: 5 dd: 27 yyyy: 2024
Juneteenth: 17-JUN-2024 mm: 6 dd: 17 yyyy: 2024
Independence Day: 4-JUL-2024 mm: 7 dd: 4 yyyy: 2024
Labor Day: 2-SEP-2024 mm: 9 dd: 2 yyyy: 2024
Thanksgiving Day: 28-NOV-2024 mm: 11 dd: 28 yyyy: 2024
Christmas Day: 25-DEC-2024 mm: 12 dd: 25 yyyy: 2024


NYSE holidays for: 2025
=======================

New Years Day: 1-JAN-2025 mm: 1 dd: 1 yyyy: 2025
Martin Luther King Day: 20-JAN-2025 mm: 1 dd: 20 yyyy: 2025
President's Day: 17-FEB-2025 mm: 2 dd: 17 yyyy: 2025
Good Friday: 18-APR-2025 mm: 4 dd: 18 yyyy: 2025
Memorial Day: 26-MAY-2025 mm: 5 dd: 26 yyyy: 2025
Juneteenth: 17-JUN-2025 mm: 6 dd: 17 yyyy: 2025
Independence Day: 4-JUL-2025 mm: 7 dd: 4 yyyy: 2025
Labor Day: 1-SEP-2025 mm: 9 dd: 1 yyyy: 2025
Thanksgiving Day: 27-NOV-2025 mm: 11 dd: 27 yyyy: 2025
Christmas Day: 25-DEC-2025 mm: 12 dd: 25 yyyy: 2025


NYSE holidays for: 2026
=======================

New Years Day: 1-JAN-2026 mm: 1 dd: 1 yyyy: 2026
Martin Luther King Day: 19-JAN-2026 mm: 1 dd: 19 yyyy: 2026
President's Day: 16-FEB-2026 mm: 2 dd: 16 yyyy: 2026
Good Friday: 3-APR-2026 mm: 4 dd: 3 yyyy: 2026
Memorial Day: 25-MAY-2026 mm: 5 dd: 25 yyyy: 2026
Juneteenth: 17-JUN-2026 mm: 6 dd: 17 yyyy: 2026
Independence Day: 3-JUL-2026 mm: 7 dd: 3 yyyy: 2026
Labor Day: 7-SEP-2026 mm: 9 dd: 7 yyyy: 2026
Thanksgiving Day: 26-NOV-2026 mm: 11 dd: 26 yyyy: 2026
Christmas Day: 25-DEC-2026 mm: 12 dd: 25 yyyy: 2026


NYSE holidays for: 2027
=======================

New Years Day: 1-JAN-2027 mm: 1 dd: 1 yyyy: 2027
Martin Luther King Day: 18-JAN-2027 mm: 1 dd: 18 yyyy: 2027
President's Day: 15-FEB-2027 mm: 2 dd: 15 yyyy: 2027
Good Friday: 26-MAR-2027 mm: 3 dd: 26 yyyy: 2027
Memorial Day: 31-MAY-2027 mm: 5 dd: 31 yyyy: 2027
Juneteenth: 17-JUN-2027 mm: 6 dd: 17 yyyy: 2027
Independence Day: 5-JUL-2027 mm: 7 dd: 5 yyyy: 2027
Labor Day: 6-SEP-2027 mm: 9 dd: 6 yyyy: 2027
Thanksgiving Day: 25-NOV-2027 mm: 11 dd: 25 yyyy: 2027
Christmas Day: 24-DEC-2027 mm: 12 dd: 24 yyyy: 2027


NYSE holidays for: 2028
=======================

New Years Day: 3-JAN-2028 mm: 1 dd: 3 yyyy: 2028
Martin Luther King Day: 17-JAN-2028 mm: 1 dd: 17 yyyy: 2028
President's Day: 21-FEB-2028 mm: 2 dd: 21 yyyy: 2028
Good Friday: 14-APR-2028 mm: 4 dd: 14 yyyy: 2028
Memorial Day: 29-MAY-2028 mm: 5 dd: 29 yyyy: 2028
Juneteenth: 19-JUN-2028 mm: 6 dd: 19 yyyy: 2028
Independence Day: 4-JUL-2028 mm: 7 dd: 4 yyyy: 2028
Labor Day: 4-SEP-2028 mm: 9 dd: 4 yyyy: 2028
Thanksgiving Day: 23-NOV-2028 mm: 11 dd: 23 yyyy: 2028
Christmas Day: 25-DEC-2028 mm: 12 dd: 25 yyyy: 2028


NYSE holidays for: 2029
=======================

New Years Day: 1-JAN-2029 mm: 1 dd: 1 yyyy: 2029
Martin Luther King Day: 15-JAN-2029 mm: 1 dd: 15 yyyy: 2029
President's Day: 19-FEB-2029 mm: 2 dd: 19 yyyy: 2029
Good Friday: 30-MAR-2029 mm: 3 dd: 30 yyyy: 2029
Memorial Day: 28-MAY-2029 mm: 5 dd: 28 yyyy: 2029
Juneteenth: 18-JUN-2029 mm: 6 dd: 18 yyyy: 2029
Independence Day: 4-JUL-2029 mm: 7 dd: 4 yyyy: 2029
Labor Day: 3-SEP-2029 mm: 9 dd: 3 yyyy: 2029
Thanksgiving Day: 22-NOV-2029 mm: 11 dd: 22 yyyy: 2029
Christmas Day: 25-DEC-2029 mm: 12 dd: 25 yyyy: 2029


NYSE holidays for: 2030
=======================

New Years Day: 1-JAN-2030 mm: 1 dd: 1 yyyy: 2030
Martin Luther King Day: 21-JAN-2030 mm: 1 dd: 21 yyyy: 2030
President's Day: 18-FEB-2030 mm: 2 dd: 18 yyyy: 2030
Good Friday: 19-APR-2030 mm: 4 dd: 19 yyyy: 2030
Memorial Day: 27-MAY-2030 mm: 5 dd: 27 yyyy: 2030
Juneteenth: 17-JUN-2030 mm: 6 dd: 17 yyyy: 2030
Independence Day: 4-JUL-2030 mm: 7 dd: 4 yyyy: 2030
Labor Day: 2-SEP-2030 mm: 9 dd: 2 yyyy: 2030
Thanksgiving Day: 28-NOV-2030 mm: 11 dd: 28 yyyy: 2030
Christmas Day: 25-DEC-2030 mm: 12 dd: 25 yyyy: 2030

```

