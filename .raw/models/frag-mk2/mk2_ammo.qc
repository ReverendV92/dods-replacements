
$ambientboost
$mostlyopaque

$modelname items/grenadeammo

$pushd w_frag

$model "Mk.II" mk2_shell

$bodygroup "Pin & Spoon"
{

	studio mk2_spoon
	blank

}

$sequence idle {
	mk2_shell
	activity ACT_VM_IDLE 1
	fps 1
}

$collisionmodel mk2_physics
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	// $concave

}

$popd

$surfaceprop grenade

$contents solid

$cdmaterials models/weapons/v_models/frag
$cdmaterials models/weapons/frag

// $keyvalues
// {

	// prop_data 
	// {

		// base Item.Small

	// }

// }
