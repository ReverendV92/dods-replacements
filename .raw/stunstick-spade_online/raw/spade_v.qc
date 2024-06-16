
$ambientboost
$mostlyopaque

$modelname weapons/v_stunstick

$include _v_models_hl2_definebones.qci

$model HEV c_arms_hev

$pushd v_spade

$model "Spade" v_spade_ref

$hboxset "Inaki"

$definebone "ValveBiped.spade_bone" "ValveBiped.Bip01_Spine2" -0.414806 65.989449 12.976147 30.621443 7.694709 151.355518 0 0.000001 0.000001 -0.000003 0 0.000001

$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 12.00
// $sequence misscenter1 "slash1_fixed" snap ACT_VM_MISSCENTER 1 fps 33.00
// $sequence misscenter2 "slash2_fixed" snap ACT_VM_MISSCENTER 1 fps 33.00
// $sequence hitcenter1 "slash1_fixed" snap ACT_VM_HITCENTER 1 fps 33.00
// $sequence hitcenter2 "slash2_fixed" snap ACT_VM_HITCENTER 1 fps 33.00
// $sequence hitkill1 "uberswing_fixed" snap ACT_VM_HITKILL 1 fps 33.00
// $sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 33.00 {
  // { event 5004 1 "Weapon_Spade.Draw" }
// }
// $sequence holster "holster_fixed" snap ACT_VM_HOLSTER 1 fps 33.00 {
  // { event 5004 1 "Weapon_Spade.Holster" }
// }
$sequence misscenter1 "slash1_fixed" snap ACT_VM_MISSCENTER 1 fps 60
$sequence misscenter2 "slash2_fixed" snap ACT_VM_MISSCENTER 1 fps 60
$sequence hitcenter1 "slash1_fixed" snap ACT_VM_HITCENTER 1 fps 60
$sequence hitcenter2 "slash2_fixed" snap ACT_VM_HITCENTER 1 fps 60
$sequence hitkill1 "uberswing_fixed" snap ACT_VM_HITKILL 1 fps 60
$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 60 {
  { event 5004 1 "Weapon_Spade.Draw" }
}
$sequence holster "holster_fixed" snap ACT_VM_HOLSTER 1 fps 60 {
  { event 5004 1 "Weapon_Spade.Holster" }
}

$popd

$cdmaterials models/weapons/v_hand
$cdmaterials models/weapons/v_models/spade
$cdmaterials models/weapons/spade
