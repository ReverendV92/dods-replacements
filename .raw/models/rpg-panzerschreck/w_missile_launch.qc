
$ambientboost
$mostlyopaque

$modelname weapons/w_missile_launch

$pushd w_panzerschreck_rocket

$model "Panzerschreck" w_panzerschreck_rocket_reference

$sequence "w_panzerschreck_idle" {
	"w_panzerschreck_rocket_anim_@w_panzerschreck_idle.smd"
	fps 1
}

$collisionmodel "w_panzerschreck_rocket_physics.smd"
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

$cdmaterials models/weapons/w_models/panzerschreck
$cdmaterials models/weapons/panzerschreck

$attachment "0" "polymsh" 0 0 -12 rotate -90 0 0
// $attachment "smoke" "polymsh" 0 0 -12 rotate 0 0 -180

$definebone "polymsh" "" 0 0 0 0 0 89.999983 0 0 0 0 0 0
