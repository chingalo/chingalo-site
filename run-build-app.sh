#!/bin/bash
clear
flutter build web
cd build/web
zip -r -D chingalo-zite.zip .
cd ../../
