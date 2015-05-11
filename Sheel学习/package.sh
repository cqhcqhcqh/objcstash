#!/bin/sh
cd /Users/cqh/Documents/中汇项目/cnepay_developkit_bt

xcodebuild -list  -project cnepay_developkit_bt.xcodeproj

xcodebuild -target cnepay_developkit_bt -project cnepay_developkit_bt.xcodeproj clean

xcodebuild -target cnepay_developkit_bt  PROVISIONING_PROFILE="4d2a2452-e19e-49b9-b73e-969967b99428" CODE_SIGN_IDENTITY="iPhone Developer: yong bin du (K84ZF359EF)"  -project cnepay_developkit_bt.xcodeproj

xcrun -sdk iphoneos PackageApplication -v /Users/cqh/Documents/中汇项目/cnepay_developkit_bt/build/Release-iphoneos/cnepay_developkit_bt.app -o /users/cqh/desktop/cnepay_developkit_bt.ipa

