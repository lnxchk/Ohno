# Ohno

A messy client-status watcher plugin for Chef::Knife

## Preface

Show long-lost chef client nodes.  Takes input as number of hours lost and 
(right now) reprints them at the bottom of the output list with the number
of hours out of sync they are.

## What it does

knife ohno 6

Shows you the clients that are 6 or more hours out of date.  Takes any integer number
of hours as the command line argument.

knife ohno 6 nocolor

Shows you the clients that are 6 or more hours out of date, but it removes the colored printout.
Useful for piping to sendmail for crons and whatnots.

## This is a mess, yo
Yup.

Thanks to @jtimberman for some de-duping help on the time_difference_in_hms stuff.



Now shows only lost cheeps.  Added some red thanks to the ui stuff and @kallistec.
