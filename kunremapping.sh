# key unremapping sh 

hidutil property --set '{ "UserKeyMapping":[
	{
		"HIDKeyboardModifierMappingSrc":0x700000039,
		"HIDKeyboardModifierMappingDst":0x700000039
	},
	{
		"HIDKeyboardModifierMappingSrc":0x700000029,
		"HIDKeyboardModifierMappingDst":0x700000029
	}
]}'

echo "ESC & CAPS LOCK unremapped"

# script to be manually run before logging out so the 
# key remapping is not applied to other users

