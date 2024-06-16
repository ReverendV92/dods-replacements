
$ambientboost
$mostlyopaque

$modelname weapons/v_grenade

$include _v_models_hl2_definebones.qci

$model HEV c_arms_hev

$pushd v_frag

$model "Mk.II" v_frag_ref

$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 11.00

$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 30.00 {
	{ event 5004 1 "Weapon_Grenade.Draw" }
}

$sequence holster "holster_fixed" snap ACT_VM_HOLSTER 1 fps 30.00 {
	{ event 5004 1 "Weapon_Grenade.Draw" }
}

$sequence pinpull "pinpull_fixed" snap ACT_VM_PULLPIN 1 fps 30.00 {
	{ event 5004 5 "Weapon_Grenade.PinPull" }
	{ event 5004 15 "Weapon_Grenade.Spoon" }
}

$sequence drawbackhigh "pinpull_fixed" snap ACT_VM_PULLBACK_HIGH 1 fps 30.00 {
	{ event 3900 4 "" }
	{ event 5004 5 "Weapon_Grenade.PinPull" }
	{ event 5004 15 "Weapon_Grenade.Spoon" }
}

$sequence drawbacklow "pinpull_fixed" snap ACT_VM_PULLBACK_LOW 1 fps 30.00 {
	{ event 3900 4 "" }
	{ event 5004 5 "Weapon_Grenade.PinPull" }
	{ event 5004 15 "Weapon_Grenade.Spoon" }
}

$sequence throw "throw_fixed" snap ACT_VM_THROW 1 fps 32.00 { event 3005 1 "" }
$sequence roll "throw_fixed" snap ACT_VM_SECONDARYATTACK 1 fps 32.00 { event 3013 2 "" }
$sequence lob "throw_fixed" snap ACT_VM_HAULBACK 1 fps 32.00 { event 3016 2 "" }

$sequence idle_live "idle_live_fixed" loop ACT_VM_IDLE_EMPTY 1 fps 30.00

$sequence draw_live "draw_live_fixed" snap ACT_VM_DRAW_EMPTY 1 fps 30.00 {
  { event 5004 1 "Weapon_Grenade.Draw" }
}

$sequence holster_live "holster_live_fixed" snap ACT_VM_HOLSTER_EMPTY 1 fps 30.00 {
  { event 5004 1 "Weapon_Grenade.Draw" }
}

$sequence pinpull_LIVE "pinpull_LIVE_fixed" snap ACT_VM_PRIMARYATTACK_EMPTY 1 fps 30.00

$popd

$hboxset "Inaki"
$definebone "ValveBiped.frag_base" "ValveBiped.Bip01_Spine2" 0.000001 0.147767 -0.597738 0 0 90 0 0 0 0 0 0
$definebone "ValveBiped.pin" "ValveBiped.frag_base" 0.381752 2.456603 0.304418 0 0 -14.184315 0 0 0 0 0 0
$definebone "ValveBiped.spoon" "ValveBiped.frag_base" -0.482210 2.727235 -0.088029 0 90 -90 0 0 0 0 0 0

$cdmaterials models/weapons/v_hand
$cdmaterials models/weapons/v_models/frag
$cdmaterials models/weapons/frag
