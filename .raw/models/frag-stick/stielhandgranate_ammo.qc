
$ambientboost
$mostlyopaque

$modelname items/grenadeammo

$pushd w_stick

$model "Stielhandgranate" stielhandgranate_w

$attachment "fuse" "steil" 10 0 0 rotate 0 0 0

$sequence idle {
	"w_grenade_anim_@idle.smd"
	activity "act_vm_idle" 1
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
