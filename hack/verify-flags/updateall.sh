#!/bin/bash

echo -n > hack/verify-flags/known-flags.txt 
echo -n > hack/verify-flags/excluded-flags.txt 
hack/verify-flags-underscore.py -e > hack/verify-flags/excluded-flags.txt 
hack/verify-flags-underscore.py -e > hack/verify-flags/known-flags.txt 
hack/verify-flags-underscore.py -e > hack/verify-flags/exceptions.txt 
