import nyse.holidays as nyse_holidays
from testing import assert_true

#
# A Mojo code example that uses a package to calculate NYSE holiday dates.
# The New York Stock exchange holidays was chosen becuase it has a floating
# holiday, Good Friday, that is based off of the Easter holiday calculation.
#
# Tested with Mojo Version 0.4.0 and Python 3.10.12 on Ubuntu 22.04.3 LTS
#
# dates verified with https://www.timeanddate.com/calendar/?year=2023&country=1
#


fn main() raises:
    alias _test_years = StaticIntTuple[8](
        2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030
    )

    for i in range(len(_test_years)):
        let yyyy: Int16 = _test_years[i]

        var mm: Int8 = 0
        var dd: Int8 = 0

        print("")
        print("NYSE holidays for:", yyyy)
        print("=======================")
        print("")
        print(
            "New Years Day:",
            nyse_holidays.calculate_new_years_day(yyyy, mm, dd),
            "mm:",
            mm,
            "dd:",
            dd,
            "yyyy:",
            yyyy,
        )
        if yyyy == 2023:
            _ = assert_true(
                yyyy == 2023 and mm == 1 and dd == 2,
                "2023 New Years Day calculation is incorrect",
            )
        #
        print(
            "Martin Luther King Day:",
            nyse_holidays.calculate_martin_luther_king_day(yyyy, mm, dd),
            "mm:",
            mm,
            "dd:",
            dd,
            "yyyy:",
            yyyy,
        )
        if yyyy == 2023:
            _ = assert_true(
                yyyy == 2023 and mm == 1 and dd == 16,
                "2023 Martin Luther King day calculation is incorrect",
            )
        #
        print(
            "President's Day:",
            nyse_holidays.calculate_presidents_day(yyyy, mm, dd),
            "mm:",
            mm,
            "dd:",
            dd,
            "yyyy:",
            yyyy,
        )
        if yyyy == 2023:
            _ = assert_true(
                yyyy == 2023 and mm == 2 and dd == 20,
                "2023 President's day calculation is incorrect",
            )
        #
        print(
            "Good Friday:",
            nyse_holidays.calculate_good_friday(yyyy, mm, dd),
            "mm:",
            mm,
            "dd:",
            dd,
            "yyyy:",
            yyyy,
        )
        if yyyy == 2023:
            _ = assert_true(
                yyyy == 2023 and mm == 4 and dd == 7,
                "2023 Good Friday calculation is incorrect",
            )
        #
        print(
            "Memorial Day:",
            nyse_holidays.calculate_memorial_day(yyyy, mm, dd),
            "mm:",
            mm,
            "dd:",
            dd,
            "yyyy:",
            yyyy,
        )
        if yyyy == 2023:
            _ = assert_true(
                yyyy == 2023 and mm == 5 and dd == 29,
                "2023 Memorial day calculation is incorrect",
            )
        #
        print(
            "Juneteenth:",
            nyse_holidays.calculate_juneteenth(yyyy, mm, dd),
            "mm:",
            mm,
            "dd:",
            dd,
            "yyyy:",
            yyyy,
        )
        if yyyy == 2023:
            _ = assert_true(
                yyyy == 2023 and mm == 6 and dd == 19,
                "2023 Juneteenth calculation is incorrect",
            )
        print(
            "Independence Day:",
            nyse_holidays.calculate_independence_day(yyyy, mm, dd),
            "mm:",
            mm,
            "dd:",
            dd,
            "yyyy:",
            yyyy,
        )
        if yyyy == 2023:
            _ = assert_true(
                yyyy == 2023 and mm == 7 and dd == 4,
                "2023 Independence day calculation is incorrect",
            )
        print(
            "Labor Day:",
            nyse_holidays.calculate_labor_day(yyyy, mm, dd),
            "mm:",
            mm,
            "dd:",
            dd,
            "yyyy:",
            yyyy,
        )
        if yyyy == 2023:
            _ = assert_true(
                yyyy == 2023 and mm == 9 and dd == 4,
                "2023 Labor day calculation is incorrect",
            )
        print(
            "Thanksgiving Day:",
            nyse_holidays.calculate_thanksgiving_day(yyyy, mm, dd),
            "mm:",
            mm,
            "dd:",
            dd,
            "yyyy:",
            yyyy,
        )
        if yyyy == 2023:
            _ = assert_true(
                yyyy == 2023 and mm == 11 and dd == 23,
                "2023 Thanksgiving day calculation is incorrect",
            )
        print(
            "Christmas Day:",
            nyse_holidays.calculate_christmas_day(yyyy, mm, dd),
            "mm:",
            mm,
            "dd:",
            dd,
            "yyyy:",
            yyyy,
        )
        if yyyy == 2023:
            _ = assert_true(
                yyyy == 2023 and mm == 12 and dd == 25,
                "2023 Christmas day calculation is incorrect",
            )
        print("")
