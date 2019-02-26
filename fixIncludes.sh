#!/bin/bash
sed -i.bak 's/starmicronics\///g' $@
sed -i.bak 's/exceptions\///g'  $@
sed -i.bak 's/StarIO\///g' $@
sed -i.bak 's/platform\///g' $@
