
$ambientboost
$mostlyopaque

// $origin 2 0 -4 0

$modelname weapons/v_rpg

$include _v_models_hl2_definebones.qci

$model HEV c_arms_hev

$pushd v_bazooka

$model "Bazooka" v_bazooka_ref

$sequence holster "up_to_holster" snap ACT_VM_HOLSTER 1 fps 72 {
	{ event 5004 2 "Weapon_Grenade.Draw" }
	node "Idle"
}

$sequence draw "draw_to_up" snap ACT_VM_DRAW 1 fps 72 {
	{ event 5004 2 "Weapon_Grenade.Draw" }
	node "Idle"
	fadeout 1
}

$sequence aimed "aimed_fixed" loop ACT_VM_IDLE 1 fps 30.00

$sequence launch "launch_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 90 {
	{ event 5001 1 "71" }
	node "Fire"
}

$sequence reload_aimed "reload_aimed_fixed" ACT_VM_RELOAD 1 fps 45 {
	{ event 5004 1 "Player.ReloadRustle" }
	{ event 5004 39 "Weapon_Bazooka.ClipIn" }
	{ event 5004 40 "Weapon_Bazooka.Draw" }
	node "Idle"
}

$popd

$hboxset "Inaki"

$definebone "ValveBiped.bazooka_BASE" "ValveBiped.Bip01_Spine2" -3.583196 62.917675 -3.081300 0.872672 -77.546963 -30.290216 0 0 0 0 0 0
$definebone "ValveBiped.latch" "ValveBiped.bazooka_BASE" -5.629921 0 -34.616398 0 90 -93.956999 0 -0.000002 0 0 0 0
$definebone "ValveBiped.rocket" "ValveBiped.bazooka_BASE" -9.191585 0 -28.766584 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.trigger" "ValveBiped.bazooka_BASE" -0.712345 0 2.285000 0 90 -90 0 0 0 0 0 0

$attachment "0" "ValveBiped.bazooka_BASE" -5.1 0 33 rotate -90 90 0
$attachment "laser" "ValveBiped.bazooka_BASE" -5.1 0 -99999 rotate -90 90 0
$attachment "laser_end" "ValveBiped.bazooka_BASE" -5.1 0 33 rotate -90 90 0

$cdmaterials models/weapons/v_hand
$cdmaterials models/weapons/v_models/bazooka
$cdmaterials models/weapons/bazooka
