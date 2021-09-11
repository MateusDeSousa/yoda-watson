#!/bin/sh

cd "$(git rev-parse --show-toplevel)"

rm -rf YodaApp.xcworkspace
rm -rf App/YodaApp.xcodeproj
rm -rf App/Derived

cd Modules
for module in *; do
    [ -d "${module}/Derived" ] && rm -rf $module/Derived
    [ -d "${module}/${module}.xcodeproj" ] && rm -rf ${module}/${module}.xcodeproj
done

cd "$(git rev-parse --show-toplevel)"