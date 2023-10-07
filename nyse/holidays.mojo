from python import Python
from builtin import string


fn day_of_the_week(yyyy: Int16, mm: Int8, dd: Int8) raises -> Int8:
    let pydatetime = Python.import_module("datetime")
    let the_date = pydatetime.date(yyyy, mm, dd)
    let day_of_the_week = the_date.weekday()  # Monday = 0 ... Sunday = 6
    # Not well documented yet...
    # you need to convert a python object to an Int
    # by converting it to a float and then to an Int
    return day_of_the_week.to_float64().to_int()


fn calculate_new_years_day(
    yyyy: Int16, inout mm: Int8 = 1, inout dd: Int8 = 1
) raises -> String:
    let numeric_day_of_the_week = day_of_the_week(yyyy, 1, 1)
    mm = 1
    if numeric_day_of_the_week == 5:  # falls on a Satuday; add two days
        dd = 3
    else:
        if numeric_day_of_the_week == 6:  # falls on a Sunday; add one day
            dd = 2
        else:
            dd = 1
    return String(dd) + "-JAN-" + String(yyyy)


fn calculate_martin_luther_king_day(
    yyyy: Int16, inout mm: Int8 = 1, inout dd: Int8 = 15
) raises -> String:
    # falls on the third Monday of every January
    let numeric_day_of_the_week = day_of_the_week(
        yyyy, 1, 1
    )  # Monday = 0 ... Sunday = 6
    mm = 1
    if numeric_day_of_the_week == 0:  # if Monday then the third Monday is the 15th
        dd = 15
    else:
        if numeric_day_of_the_week == 1:  # if Tuesday then the third Monday is the 21st
            dd = 21
        else:
            if (
                numeric_day_of_the_week == 2
            ):  # if wednesday then the third Monday is the 20th
                dd = 20
            else:
                if (
                    numeric_day_of_the_week == 3
                ):  # if thursday then the third Monday is the 19th
                    dd = 19
                else:
                    if (
                        numeric_day_of_the_week == 4
                    ):  # if Friday then the third Monday is the 18th
                        dd = 18
                    else:
                        if (
                            numeric_day_of_the_week == 5
                        ):  # if Saturday then the third Monday is the 17th
                            dd = 17
                        else:  # dothw == 6; if Sunday then the third Monday is the 16th
                            dd = 16

    return String(dd) + "-JAN-" + String(yyyy)


fn calculate_presidents_day(
    yyyy: Int16, inout mm: Int8 = 2, inout dd: Int8 = 15
) raises -> String:
    # falls on the third Monday of every February
    let numeric_day_of_the_week = day_of_the_week(
        yyyy, 2, 1
    )  # Monday = 0 ... Sunday = 6
    mm = 2
    if numeric_day_of_the_week == 0:  # if Monday then the third Monday is the 15th
        dd = 15
    else:
        if numeric_day_of_the_week == 1:  # if Tuesday then the third Monday is the 21st
            dd = 21
        else:
            if (
                numeric_day_of_the_week == 2
            ):  # if wednesday then the third Monday is the 20th
                dd = 20
            else:
                if (
                    numeric_day_of_the_week == 3
                ):  # if thursday then the third Monday is the 19th
                    dd = 19
                else:
                    if (
                        numeric_day_of_the_week == 4
                    ):  # if Friday then the third Monday is the 18th
                        dd = 18
                    else:
                        if (
                            numeric_day_of_the_week == 5
                        ):  # if Saturday then the third Monday is the 17th
                            dd = 17
                        else:  # dothw == 6; if Sunday then the third Monday is the 16th
                            dd = 16

    return String(dd) + "-FEB-" + String(yyyy)


fn calculate_memorial_day(
    yyyy: Int16, inout mm: Int8 = 5, inout dd: Int8 = 31
) raises -> String:
    mm = 5
    # falls on the last Monday of May
    let numeric_day_of_the_week = day_of_the_week(
        yyyy, mm, 31
    )  # Monday = 0 ... Sunday = 6
    dd = 31 - numeric_day_of_the_week
    return String(dd) + "-MAY-" + String(yyyy)


fn calculate_juneteenth(
    yyyy: Int16, inout mm: Int8 = 6, inout dd: Int8 = 17
) raises -> String:
    # Juneteenth became an official holiday in 2021
    if yyyy < 2021:
        mm = 6
        dd = 17
        return "17-JUN-" + String(yyyy)

    mm = 6
    let numeric_day_of_the_week = day_of_the_week(
        yyyy, mm, 17
    )  # Monday = 0 ... Sunday = 6
    if numeric_day_of_the_week == 5:
        dd = 19
    else:
        if numeric_day_of_the_week == 6:
            dd = 18
        else:
            dd = 17

    return String(dd) + "-JUN-" + String(yyyy)


fn calculate_independence_day(
    yyyy: Int16, inout mm: Int8 = 7, inout dd: Int8 = 4
) raises -> String:
    mm = 7
    let numeric_day_of_the_week = day_of_the_week(
        yyyy, mm, 4
    )  # Monday = 0 ... Sunday = 6
    if numeric_day_of_the_week == 5:  # if Saturday then observe Friday
        dd = 3
    else:
        if numeric_day_of_the_week == 6:
            dd = 5
        else:
            dd = 4
    return String(dd) + "-JUL-" + String(yyyy)


fn calculate_good_friday(
    yyyy: Int16, inout mm: Int8 = 3, inout dd: Int8 = 31
) raises -> String:
    # first let us calculate Easter Sunday before we can calculate Good Friday
    let result: String = calculate_easter(yyyy, mm, dd)
    let month: String
    if mm == 4 and dd <= 2:
        if dd == 2:
            mm = 3
            dd = 31
            month = "MAR"
            return (String(dd)) + "-" + month + "-" + String(yyyy)
        else:
            mm = 3
            dd = 30
            month = "MAR"
            return (String(dd)) + "-" + month + "-" + String(yyyy)
    else:
        dd = dd - 2
        if mm == 3:
            month = "MAR"
        else:
            month = "APR"
        return (String(dd)) + "-" + month + "-" + String(yyyy)


fn calculate_labor_day(
    yyyy: Int16, inout mm: Int8 = 9, inout dd: Int8 = 1
) raises -> String:
    # the first Monday in September
    mm = 9
    let numeric_day_of_the_week = day_of_the_week(
        yyyy, mm, 1
    )  # Monday = 0 ... Sunday = 6
    if numeric_day_of_the_week == 0:
        dd = 1
    else:
        if numeric_day_of_the_week == 1:
            dd = 7
        else:
            if numeric_day_of_the_week == 2:
                dd = 6
            else:
                if numeric_day_of_the_week == 3:
                    dd = 5
                else:
                    if numeric_day_of_the_week == 4:
                        dd = 4
                    else:
                        if numeric_day_of_the_week == 5:
                            dd = 3
                        else:
                            dd = 2

    return String(dd) + "-SEP-" + String(yyyy)


fn calculate_thanksgiving_day(
    yyyy: Int16, inout mm: Int8 = 11, inout dd: Int8 = 25
) raises -> String:
    # fourth Thursday in November
    mm = 11
    let numeric_day_of_the_week = day_of_the_week(
        yyyy, mm, 1
    )  # Monday = 0 ... Sunday = 6
    if numeric_day_of_the_week == 0:  # Monday
        dd = 25
    else:
        if numeric_day_of_the_week == 1:  # Tuesday
            dd = 24
        else:
            if numeric_day_of_the_week == 2:  # Wednesday
                dd = 23
            else:
                if numeric_day_of_the_week == 3:  # Thursday
                    dd = 22
                else:
                    if numeric_day_of_the_week == 4:  # Friday
                        dd = 28
                    else:
                        if numeric_day_of_the_week == 5:  # Saturday
                            dd = 27
                        else:  # Sunday
                            dd = 26

    return String(dd) + "-NOV-" + String(yyyy)


fn calculate_christmas_day(
    yyyy: Int16, inout mm: Int8 = 12, inout dd: Int8 = 25
) raises -> String:
    mm = 12
    let numeric_day_of_the_week = day_of_the_week(
        yyyy, mm, 25
    )  # Monday = 0 ... Sunday = 6
    if numeric_day_of_the_week == 5:
        dd = 24
    else:
        if numeric_day_of_the_week == 6:
            dd = 26
        else:
            dd = 25

    return String(dd) + "-DEC-" + String(yyyy)


fn calculate_easter(
    yyyy: Int16, inout mm: Int8 = 3, inout dd: Int8 = 31
) raises -> String:
    let pymath = Python.import_module("math")
    # See https://en.wikipedia.org/wiki/Date_of_Easter#Anonymous_Gregorian_algorithm
    let a = yyyy % 19
    let b = pymath.floor(yyyy / 100)
    let c = yyyy % 100
    let d = pymath.floor(b / 4)
    let e = (b % 4)
    let f = pymath.floor((b + 8) / 25)
    let g = pymath.floor((b - f + 1) / 3)
    let h = ((19 * a) + b - d - g + 15) % 30
    let i = pymath.floor(c / 4)
    let k = (c % 4)
    let l = (32 + (2 * e) + (2 * i) - h - k) % 7
    let m = pymath.trunc((a + (11 * h) + (22 + l)) / 451)
    var n = pymath.floor((h + l - (7 * m) + 114) / 31)
    let o = ((h + l - (7 * m) + 114) % 31)
    # roll over to the next month if it is the last day of the month
    if o == 31:
        dd = 1
        n = 4
    else:
        # Not well documented yet...
        # you need to convert a python object to an Int
        # by converting it to a float and then to an Int
        dd = o.to_float64().to_int() + 1

    let month: String
    if n == 3:
        month = "MAR"
        mm = 3
    else:
        month = "APR"
        mm = 4

    return (String(dd)) + "-" + month + "-" + String(yyyy)
