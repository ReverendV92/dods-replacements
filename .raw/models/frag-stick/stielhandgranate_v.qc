
$ambientboost
$mostlyopaque

$modelname weapons/v_grenade

$include _v_models_hl2_definebones.qci

$model HEV c_arms_hev

$pushd v_stick

$model "Stielhandgranate" v_stick_ref

$hboxset "Inaki"

$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 10.00

$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 33.00 {
  { event 5004 1 "Weapon_Grenade.Draw" }
}

$sequence holster "holster_fixed" snap ACT_VM_HOLSTER 1 fps 33.00 {
  { event 5004 1 "Weapon_Grenade.Draw" }
}

$sequence pinpull "pinpull_fixed" snap ACT_VM_PULLPIN 1 fps 35.00 {
  { event 5004 8 "Weapon_Grenade.String" }
}

$sequence drawbackhigh "pinpull_fixed" snap ACT_VM_PULLBACK_HIGH 1 fps 35.00 {
	{ event 3900 4 "" }
	{ event 5004 8 "Weapon_Grenade.String" }
}

$sequence drawbacklow "pinpull_fixed" snap ACT_VM_PULLBACK_LOW 1 fps 35.00 {
	{ event 3900 4 "" }
	{ event 5004 8 "Weapon_Grenade.String" }
}

$sequence roll "throw_fixed" snap ACT_VM_SECONDARYATTACK 1 fps 35.00 { event 3013 2 "" }

$sequence throw "throw_fixed" snap ACT_VM_THROW 1 fps 35.00 { event 3005 1 "" }

$sequence lob "throw_fixed" snap ACT_VM_HAULBACK 1 fps 35.00 { event 3016 2 "" }

$sequence idle_live "idle_live_fixed" loop ACT_VM_IDLE_EMPTY 1 fps 30.00

$sequence draw_live "draw_live_fixed" snap ACT_VM_DRAW_EMPTY 1 fps 33.00 {
  { event 5004 1 "Weapon_Grenade.Draw" }
}

$sequence pinpull_live "pinpull_live_fixed" snap ACT_VM_PRIMARYATTACK_EMPTY 1 fps 35.00

$popd

$definebone "ValveBiped.stick_grenade_bone" "ValveBiped.Bip01_Spine2" -41.692261 54.165340 1.155344 59.343703 37.542033 8.607491 0 0 0 -0.000002 0.000002 0.000001
$definebone "ValveBiped.root" "ValveBiped.stick_grenade_bone" 0.002546 -5.486645 -0.008009 89.235944 173.744906 173.717299 -0.000002 0 0 0.000003 -0.000002 0.000002
$definebone "ValveBiped.bone" "ValveBiped.root" -0.000002 0 -0.000002 0.000001 -90.350010 -0.000003 0 0 0 0.000001 0.000002 -0.000003
$definebone "ValveBiped.bone1" "ValveBiped.bone" 1.600000 0 0 0.000001 0.000002 -0.000003 0.000001 -0.000002 0 0.000001 0.000002 -0.000003
$definebone "ValveBiped.bone2" "ValveBiped.bone1" 1.736996 -0.000002 0 0.000001 0.000002 -0.000003 0.000001 0 0 0.000001 0.000002 -0.000003

$cdmaterials models/weapons/v_hand
$cdmaterials models/weapons/v_models/stick
$cdmaterials models/weapons/stick

