#!/bin/bash

# for ANY state transition.
# "notify" script is called AFTER the
# notify_* script(s) and is executed
# with 3 arguments provided by keepalived
# (ie don't include parameters in the notify line).
# arguments
# $1 = "GROUP"|"INSTANCE"
# $2 = name of group or instance
# $3 = target state of transition
#     ("MASTER"|"BACKUP"|"FAULT")

TYPE=$1
NAME=$2
STATE=$3

case $STATE in
        "MASTER") logger "I'm the MASTER! Whup whup."
                  exit 0
                  ;;
        "BACKUP") logger "Ok, i'm just a backup, great."
                  exit 0
                  ;;
        "FAULT")  logger "Fault, what ?"
                  exit 0
                  ;;
        *)        logger "Unknown state"
                  exit 1
                  ;;
esac
