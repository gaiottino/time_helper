# time_helper

time_helper is a slim gem that adds some of the methods that I really liked from working with Rails projects. I still to a lot of work that require date and time manipulation so I decided to finally replicate some of the methods since I don't want to rely on ActiveSupport.

## Requirements

None really. As long as you don't rely on ActiveSupport already it shouldn't affect your code. You'll see some warnings and this gem won't do anything if this is the case.

## Installation

    gem install time_helper

## Examples

Most of the time I use the methods in combination with Time objects but by default they return the number of seconds.

    3.minutes == 180
    
But they become more useful when used in combination of a Time object or with the ago/from_now methods.
At noon of April 17, 1964 `Time.utc(1964, 4, 17, 12)` these would be the results

    3.days.ago == Time.utc(1964, 4, 14, 12)
    
and
    
    5.hours.from_now == Time.utc(1964, 4, 17, 17)
    
If you have a Time object you can use the methods to alter it i.e. using `t = Time.utc(1964, 4, 17, 12)` you will get

    t - 3.days == Time.utc(1964, 4, 14, 12)
    
and

    t + 5 hours == Time.utc(1964, 4, 17, 17)