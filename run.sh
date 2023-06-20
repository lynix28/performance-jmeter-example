TESTFILE=$1
RESULTFILE="jmeter.log"
OUTPUT_DIR=./reports
HELPER_TEXT="[ HOW TO RUN ] \n ./run.sh YOUR_TESTFILE \n"

function check_report () {
    if [ -d "$OUTPUT_DIR" ];
    then
        rm -r $OUTPUT_DIR;
        mkdir $OUTPUT_DIR;
    else
       mkdir $OUTPUT_DIR;
    fi
}

function run_test () {
    if [ -z $TESTFILE ]; 
    then 
        echo $HELPER_TEXT; 
    else
        jmeter -n -t $TESTFILE -l $OUTPUT_DIR/$RESULTFILE -e -o $OUTPUT_DIR
    fi
}

check_report
run_test