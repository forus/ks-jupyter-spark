#!/bin/bash

set -e

ipython nbconvert jupyter-spark.ipynb --to slides

#To fix link wo protocol. It gives error in browser.
sed 's/href="\/\/netdna.bootstrapcdn.com/href="http:\/\/netdna.bootstrapcdn.com/g' jupyter-spark.slides.html > slides.html
