
$ambientboost
$mostlyopaque

$modelname weapons/w_missile_closed

$pushd w_bazooka

$model "Bazooka" bazooka_rocket_p

$sequence idle {
	bazooka_rocket_p
	fps 1
}

$collisionmodel bazooka_rocket_p_phy
{
	$mass 3
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}

$popd

$surfaceprop metal
$contents solid

$hboxset "default"

$illumposition 0 0 0

$cdmaterials models/weapons/w_models/bazooka
$cdmaterials models/weapons/bazooka

$definebone "ValveBiped.Bip01_R_Hand" "" 0.312503 -16.719320 0.282627 12.461603 88.326430 177.528804 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "polymsh" "" 0.000000 0.000000 0.000000 0.000000 0.000000 89.999983 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000

$attachment "0" "polymsh" -8 0 0 rotate 0 0 0
