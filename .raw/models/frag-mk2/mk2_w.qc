
$ambientboost
$mostlyopaque

$modelname weapons/w_grenade

$pushd w_frag

$model "Mk.II" mk2_shell

$bodygroup "Pin & Spoon"
{

	blank
	studio mk2_spoon

}

$illumposition -2.5 0 -3

$attachment fuse "ValveBiped.Bip01_R_Hand" 4.00 -2.40 -4.00 rotate 0 0 0
// $attachment fuse "ValveBiped.Bip01_R_Hand" 0 0 -999999 rotate 0 0 0

$bbox -2.089 -2.089 -4.684 2.089 2.089 4.839

$sequence idle {
	w_grenade_anim_@idle
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
