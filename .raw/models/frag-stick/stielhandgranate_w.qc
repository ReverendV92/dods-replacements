
$ambientboost
$mostlyopaque

$modelname weapons/w_grenade

$pushd w_stick

$model "Stielhandgranate" stielhandgranate_w

$illumposition 0 0 5

$attachment "fuse" "steil" 0 0 10 rotate 0 0 0
// $attachment "fuse" "steil" 0 0 -999999 rotate 0 0 0

$sequence idle {
	"w_grenade_anim_@idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel stielhandgranate_w_phy
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}

$popd

$surfaceprop grenade

$contents solid

$cdmaterials models/weapons/w_models/stick
$cdmaterials models/weapons/stick
