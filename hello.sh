#! /bin/bash

echo "Hello World!"
echo "Good Morning!"
echo "Today date is:"
date

#Setting Debug mode for Individual Lines

#! /bin/bash
echo "Hello World!"
echo "Good Morning!"
set -x
echo "Today date is:"
set +x
date