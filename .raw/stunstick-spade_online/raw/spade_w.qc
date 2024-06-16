
$mostlyopaque
$ambientboost

$modelname weapons/w_stunbaton

$pushd w_spade

$model "Spade" spade_w

$sequence "idle" {
	"w_stunbaton_anim_@idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attack1" {
	"w_stunbaton_anim_@attack1.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel spade_w_phy
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}

$popd

$surfaceprop weapon

$contents solid

$cdmaterials models/weapons/w_models/spade
$cdmaterials models/weapons/spade

$attachment "0" "ValveBiped.Bip01_R_Hand" 0 0 -999999 rotate 0 0 0
$attachment "1" "ValveBiped.Bip01_R_Hand" 0 0 -999999 rotate 0 0 0
