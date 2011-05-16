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


## This is a mess, yo
Yup.

Need to learn something about inheritance in ruby. Someday. Right now have a duped copy of the time converter in the ohno.rb file.

Want to fix the output to just show the bustimicated ones and not the whole f'ing list.
