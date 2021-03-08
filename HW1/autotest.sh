#! /bin/bash
#
# This bash script does automatic testing (more or less) of
# the giftcard suite of programs
#
for f in "*.gft"; do
  echo $f
done

echo "known 'good' file, known good commands"
if ./giftcardreader 1 examplefile.gft ; then
  echo "Test **PASSED**"
else
  echo "test FAILED: unexpectedly ended abnormally"
fi
if ./giftcardreader 1 examplefile.gft ; then
  echo "Test **PASSED**"
else
  echo "test FAILED:  unexpectedly ended abnormally"
fi


echo "Bad # of args (too many)"
if ./giftcardreader 3 examplefile.gft gretchen; then
  echo "test FAILED: finished normally when should have error'd"
else
  echo "Test **PASSED**: finished with an error as supposed to"
fi

echo "Bad # of args (too few)"
if ./giftcardreader 3 ; then
  echo "test FAILED: finished normally when should have error'd"
else
  echo "Test **PASSED**: finished with an error as supposed to"
fi

echo "Bad 2nd argument"
if ./giftcardreader 3 examplefile.gft; then
  echo "test FAILED: finished normally when should have error'd"
else
  echo "Test **PASSED**: finished with an error as supposed to"
fi



echo "non-existant file"
if  ./giftcardreader 1 "I'm not there.gft"; then
  echo "test FAILED: finished normally when should have error'd"
else
  echo "Test **PASSED**: finished with an error as supposed to"
fi



