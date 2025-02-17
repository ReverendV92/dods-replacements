
$ambientboost
$mostlyopaque
$staticprop

$modelname items/ar2_grenade
// $modelname weapons/ar2_grenade

$pushd w_frag

$model "Mk.II Fragmentation Grenade" mk2_pineapple_w

$sequence idle {
	mk2_pineapple_w
	activity ACT_VM_IDLE 1
	fps 1
}

$collisionmodel mk2_pineapple_w
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

$cdmaterials models/weapons/w_models/frag
$cdmaterials models/weapons/mk2
$cdmaterials models/weapons/frag
$cdmaterials models/jessev92/dods/weapons/mk2
$cdmaterials models/jessev92/dods/weapons/frag
