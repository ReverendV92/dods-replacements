
$ambientboost
$mostlyopaque
$staticprop

$modelname items/ar2_grenade
// $modelname weapons/ar2_grenade

$pushd w_stick

$model "Stielhandgranate" stielhandgranate_w

$sequence idle {
	stielhandgranate_w
	activity ACT_VM_IDLE 1
	fps 1
}

$collisionmodel stielhandgranate_w
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	//$concave

}

$popd

$surfaceprop grenade

$contents solid

$cdmaterials models/weapons/w_models/stick
$cdmaterials models/weapons/stielhandgranate
$cdmaterials models/weapons/stick
$cdmaterials models/jessev92/dods/weapons/stielhandgranate
$cdmaterials models/jessev92/dods/weapons/stick
