#####
# run_canifest - Run the Canifest Core service and launch the Command Line wizard
#####

#TODO: Figure out where the canifest executables will be and what they will be named

NAME=core
DAEMON=/opt/canifest_core
CLI=/opt/canifest_cli
PIDFILE=/opt/core.pid

if [  -e $PIDFILE ]; then
  echo "PID File already exists, Canifest Core process is stil running"
else
  eval $DAEMON &
  PID=`ps -a | grep canifest_core | cut -d ' ' -f 1`
  echo $PID > $PIDFILE
fi

eval $CLI
