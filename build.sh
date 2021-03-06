#! /bin/sh

echo "\n"
echo "          **********************************************"
echo "             Building all OMC projects"
echo "          **********************************************"
echo "\n"

IN_CONFIG=$1;
#echo "IN_CONFIG=$IN_CONFIG"

IN_ACTION=$2;
#echo "IN_ACTION=$IN_ACTION"

PARENT_DIR=`dirname "$0"`;
cd "$PARENT_DIR";
#echo "Building in: $PARENT_DIR"

if test "$IN_CONFIG" = ""; then
	IN_CONFIG="ship";
fi

if test "$IN_ACTION" = ""; then
	IN_ACTION="build";
fi


if test "$IN_CONFIG" = debug; then
	BUILD_CONFIG="Debug";
else
	BUILD_CONFIG="Release";
fi

#echo "BUILD_CONFIG=$BUILD_CONFIG"

echo "b64";
xcodebuild -project b64/b64.xcodeproj -alltargets -configuration $BUILD_CONFIG $IN_ACTION 2>&1 | grep -e "BUILD" | awk '{if ($0 ~ /.*FAIL.*/) printf "\033[1;31m"$0"\033[0m\n"; else printf $0"\n";}';
echo ""

echo "plister";
xcodebuild -project plister/plister.xcodeproj -alltargets -configuration $BUILD_CONFIG $IN_ACTION 2>&1 | grep -e "BUILD" | awk '{if ($0 ~ /.*FAIL.*/) printf "\033[1;31m"$0"\033[0m\n"; else printf $0"\n";}';
echo ""

echo "filt";
xcodebuild -project filt/filt.xcodeproj -alltargets -configuration $BUILD_CONFIG $IN_ACTION 2>&1 | grep -e "BUILD" | awk '{if ($0 ~ /.*FAIL.*/) printf "\033[1;31m"$0"\033[0m\n"; else printf $0"\n";}';
echo ""

echo "alert";
xcodebuild -project alert/alert.xcodeproj -alltargets -configuration $BUILD_CONFIG $IN_ACTION 2>&1 | grep -e "BUILD" | awk '{if ($0 ~ /.*FAIL.*/) printf "\033[1;31m"$0"\033[0m\n"; else printf $0"\n";}';
echo ""

echo "omc_next_command";
xcodebuild -project omc_next_command/omc_next_command.xcodeproj -alltargets -configuration $BUILD_CONFIG $IN_ACTION 2>&1 | grep -e "BUILD" | awk '{if ($0 ~ /.*FAIL.*/) printf "\033[1;31m"$0"\033[0m\n"; else printf $0"\n";}';
echo ""

echo "omc_dialog_control";
xcodebuild -project omc_dialog_control/omc_dialog_control.xcodeproj -alltargets -configuration $BUILD_CONFIG $IN_ACTION 2>&1 | grep -e "BUILD" | awk '{if ($0 ~ /.*FAIL.*/) printf "\033[1;31m"$0"\033[0m\n"; else printf $0"\n";}';
echo ""

echo "loco";
xcodebuild -project loco/loco.xcodeproj -alltargets -configuration $BUILD_CONFIG $IN_ACTION 2>&1 | grep -e "BUILD" | awk '{if ($0 ~ /.*FAIL.*/) printf "\033[1;31m"$0"\033[0m\n"; else printf $0"\n";}';
echo ""

echo "pasteboard";
xcodebuild -project pasteboard/pasteboard.xcodeproj -alltargets -configuration $BUILD_CONFIG $IN_ACTION 2>&1 | grep -e "BUILD" | awk '{if ($0 ~ /.*FAIL.*/) printf "\033[1;31m"$0"\033[0m\n"; else printf $0"\n";}';
echo ""

echo "notify";
xcodebuild -project notify/notify.xcodeproj -alltargets -configuration $BUILD_CONFIG $IN_ACTION 2>&1 | grep -e "BUILD" | awk '{if ($0 ~ /.*FAIL.*/) printf "\033[1;31m"$0"\033[0m\n"; else printf $0"\n";}';
echo ""

echo "Abracode.framework";
xcodebuild -project AbracodeFramework/Abracode.xcodeproj -alltargets -configuration $BUILD_CONFIG $IN_ACTION 2>&1 | grep -e "BUILD" | awk '{if ($0 ~ /.*FAIL.*/) printf "\033[1;31m"$0"\033[0m\n"; else printf $0"\n";}';
echo ""

echo "OMCApplet";
xcodebuild -project OMCApplet/OMCApplet.xcodeproj -alltargets -configuration $BUILD_CONFIG $IN_ACTION 2>&1 | grep -e "BUILD" | awk '{if ($0 ~ /.*FAIL.*/) printf "\033[1;31m"$0"\033[0m\n"; else printf $0"\n";}';
echo ""

echo "OMCService";
xcodebuild -project OMCService/OMCService.xcodeproj -alltargets -configuration $BUILD_CONFIG $IN_ACTION 2>&1 | grep -e "BUILD" | awk '{if ($0 ~ /.*FAIL.*/) printf "\033[1;31m"$0"\033[0m\n"; else printf $0"\n";}';
echo ""

echo "OnMyCommandCM";
xcodebuild -project OnMyCommandCM/OnMyCommandCM.xcodeproj -alltargets -configuration $BUILD_CONFIG $IN_ACTION 2>&1 | grep -e "BUILD" | awk '{if ($0 ~ /.*FAIL.*/) printf "\033[1;31m"$0"\033[0m\n"; else printf $0"\n";}';
echo ""

echo "OMCTestApp";
xcodebuild -project OMCTestApp/OMCTestApp.xcodeproj -alltargets -configuration $BUILD_CONFIG $IN_ACTION 2>&1 | grep -e "BUILD" | awk '{if ($0 ~ /.*FAIL.*/) printf "\033[1;31m"$0"\033[0m\n"; else printf $0"\n";}';
echo ""

#echo "OMCEdit";
#xcodebuild -project OMCEdit/OMCEdit.xcodeproj -alltargets -configuration $BUILD_CONFIG $IN_ACTION 2>&1 | grep -e "BUILD" | awk '{if ($0 ~ /.*FAIL.*/) printf "\033[1;31m"$0"\033[0m\n"; else printf $0"\n";}';
#echo ""

exit 0;