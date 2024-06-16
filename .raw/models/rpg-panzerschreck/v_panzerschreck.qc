
$ambientboost
$mostlyopaque

$origin 2 0 -4 0

$modelname weapons/v_rpg

$include _v_models_hl2_definebones.qci

$model HEV c_arms_hev

$pushd v_panzerschreck

$model "Panzerschreck" v_panzerschreck_noshield

// $sequence idle "idle_fixed" loop ACT_VM_IDLE_DEPLOYED 1 fps 20.00 node "Idle"

// $sequence holster "holster_fixed" snap ACT_VM_HOLSTER 1 fps 30.00 {
	// { event 5004 2 "Weapon_Grenade.Draw" }
	// node "Idle"
// }

// $sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 30.00 {
	// { event 5004 2 "Weapon_Grenade.Draw" }
	// node "Idle"
	// fadeout 1
// }

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

// $sequence down_to_up "down_to_up_fixed" ACT_VM_DEPLOY 1 fps 49.60 {
	// { event 5004 3 "Weapon_Grenade.Draw" }
	// transition "Low" "Idle"
// }

// $sequence up_to_down "up_to_down_fixed" ACT_VM_UNDEPLOY 1 fps 35.00 {
	// { event 5004 3 "Weapon_Grenade.Draw" }
	// transition "Idle" "Low"
// }

$sequence reload_aimed "reload_aimed_fixed" ACT_VM_RELOAD 1 fps 45 {
	{ event 5004 1 "Player.ReloadRustle" }
	{ event 5004 39 "Weapon_Panzerschreck.ClipIn" }
	{ event 5004 40 "Weapon_Panzerschreck.Draw" }
	node "Idle"
}

// $sequence reload_idle "reload_idle_fixed" ACT_VM_RELOAD_DEPLOYED 1 fps 30.00 {
	// { event 5004 1 "Player.ReloadRustle" }
	// { event 5004 39 "Weapon_Panzerschreck.ClipIn" }
	// { event 5004 40 "Weapon_Panzerschreck.Draw" }
	// node "Idle"
// }

$popd

$hboxset "Inaki"

$definebone "ValveBiped.panzer_BASE" "ValveBiped.Bip01_Spine2" -5.070109 63.920563 -5.177171 0.872672 -77.546963 -30.290216 0 0 0 0 0 0
$definebone "ValveBiped.latch" "ValveBiped.panzer_BASE" -7.390190 0 -29.715605 0 90 -94.917391 0 0 0 0 0 0
$definebone "ValveBiped.rocket" "ValveBiped.panzer_BASE" -13.159372 -0.008971 -11.577474 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.swivel_clip1" "ValveBiped.panzer_BASE" -7.311798 0 12.241474 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.swivel_clip2" "ValveBiped.panzer_BASE" -7.312130 0 -18.470749 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.trigger1" "ValveBiped.panzer_BASE" -1.218126 0 1.812247 0 90 -90 0 0 0 0 0 0
$definebone "ValveBiped.trigger2" "ValveBiped.panzer_BASE" -1.912562 0 5.573451 0 90 -29.529671 0 0 0 0 0 0

$attachment "0" "ValveBiped.panzer_BASE" -5.10 0.00 33.00 rotate -90 90 0
$attachment "laser" "ValveBiped.panzer_BASE" -5.10 0.00 33.00 rotate -90 90 0
$attachment "laser_end" "ValveBiped.panzer_BASE" -5.10 0.00 33.00 rotate -90 90 0

$cdmaterials models/weapons/v_hand
$cdmaterials models/weapons/v_models/panzerschreck
$cdmaterials models/weapons/panzerschreck
