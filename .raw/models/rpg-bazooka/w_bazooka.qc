
$ambientboost
$mostlyopaque

$origin 1 0 -2 0

$modelname weapons/w_rocket_launcher

$pushd w_bazooka

$model "Bazooka" bazooka_w

$sequence "idle" {
	"w_rocket_launcher_anim_@idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload" {
	"w_rocket_launcher_anim_@idle.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence launch "w_rocket_launcher_anim_@attack1" snap ACT_VM_PRIMARYATTACK 1 fps 30.00 {
	activity "ACT_RANGE_ATTACK_RPG" 1
	{ event 5003 0 "RPG MUZZLE" }
	{ event 3002 0 "" }
	{ event 5003 0 "RPG EXHAUST" }
	{ event 5001 0 "71" }
	node "Fire"
}

$collisionmodel bazooka_w_phy
{

	$mass 20
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}

$popd

$surfaceprop weapon
$contents solid

$hboxset "Inaki"

$definebone "ValveBiped.Bip01_R_Hand" "" 0.312503 -16.719320 0.282627 12.461603 88.326430 177.528804 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "Muzzle" "ValveBiped.Bip01_R_Hand" 34.751228 -1.482498 -13.002741 -2.109115 88.364815 -167.473044 -0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000001
$definebone "backblast" "ValveBiped.Bip01_R_Hand" -27.793060 -0.208721 0.886875 -2.109115 88.364815 -167.473044 0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000001
$definebone "bazooka_w" "" 0.000000 1.028991 0.674324 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "ValveBiped.Anim_Attachment_RH" "ValveBiped.Bip01_R_Hand" 2.676088 -1.71244 0 0 -89.999983 -89.999983 0 0 0 0 0 0

// $definebone "ValveBiped.Bip01_R_Hand" "" 0.312503 -16.71932 0.282627 12.461603 88.326429 177.528803 0 0 0 0 0 0
// $definebone "ValveBiped.Anim_Attachment_RH" "ValveBiped.Bip01_R_Hand" 2.676088 -1.71244 0 0 -89.999983 -89.999983 0 0 0 0 0 0
// $definebone "muzzle" "ValveBiped.Bip01_R_Hand" 0 0 0 0 0 0 0 0 0 0 0 0
// $definebone "exhaust" "ValveBiped.Bip01_R_Hand" 0 0 0 0 0 0 0 0 0 0 0 0

$attachment "muzzle" "Muzzle" 0 0 0 rotate 0 0 0
$attachment "missile" "Muzzle" 0 5 0 rotate 0 0 0
$attachment "exhaust" "backblast" 0 0 0 rotate 0 0 0

$cdmaterials models/weapons/w_models/bazooka
$cdmaterials models/weapons/bazooka

$bbox -4.632 -5.917 -7.459 42.138 2.866 18.224
