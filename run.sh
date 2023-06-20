TESTFILE=$1
RESULTFILE=$2
OUTPUT_DIR=./reports

rm -r ./reports
mkdir reports
jmeter -n -t $TESTFILE -l $OUTPUT_DIR/$RESULTFILE -e -o $OUTPUT_DIR