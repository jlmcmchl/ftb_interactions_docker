###################################################
# Configuration for start.sh


###################################################
# Pack specific settings
# Only edit this section if you know what you are doing

export FORGEJAR="forge-1.12.2-14.23.5.2847-universal.jar"

###################################################
# Default arguments for JVM

export JAVACMD="java"
export MIN_RAM="4096M"       # -Xms
export MAX_RAM="8192M"       # -Xmx
export JAVA_PARAMETERS="-XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:+CMSIncrementalPacing -XX:+CMSClassUnloadingEnabled -XX:ParallelGCThreads=5 -XX:MinHeapFreeRatio=5 -XX:MaxHeapFreeRatio=10"

export SYNC_FOLDER="/sync"
