#!/bin/bash


cdate=$(date "+%d-%m-%Y")
week=(1 2 3 4 5 6)

day_inc() {
  day=$(date -d "+$1 day" "+%d-%m-%Y")
  echo $day
}


day1=$(day_inc "${week[0]}")
day2=$(day_inc "${week[1]}")
day3=$(day_inc "${week[2]}")
day4=$(day_inc "${week[3]}")
day5=$(day_inc "${week[4]}")
day6=$(day_inc "${week[5]}")


echo "
| TIME     |"$cdate"|$day0|$day1|$day2|$day3|$day4|$day5 |$day6|
| -------- |--------|-----|-----|-----|-----|-----|------|-----|
| 8:00 AM  |
| 9:00 AM  |
| 10:00 AM |
| 11:00 AM |
| 12:00 PM |
| 1:00 PM  |
| 2:00 PM  |
| 3:00 PM  |
| 4:00 PM  |
| 5:00 PM  |
| 6:00 PM  |
| 7:00 PM  |
| 8:00 PM  |
"

