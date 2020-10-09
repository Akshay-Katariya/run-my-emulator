ALL_EMULATORS=( `emulator -list-avds` )
ALL_EMULATORS_length=${#ALL_EMULATORS[@]}

echo "\n----------SELECT AVD----------"

INDEX=0
for element in "${ALL_EMULATORS[@]}"
do
   echo "\n${INDEX}) $element"
   let INDEX=${INDEX}+1
done

echo "\n------------------------------"


echo "\nEnter ADV number which you want to use?"
read varname

if [[ "$varname" -lt "$ALL_EMULATORS_length"  && "$varname" -ge 0 ]]
then
  echo "\nStarting Emulator for you... 😃"
  echo "\n🔴 Closing the terminal will close your Emulator 🔴"
  run_avd = `emulator -avd ${ALL_EMULATORS[varname]}`
else
  echo "\nSelect valid AVD..."
fi  
