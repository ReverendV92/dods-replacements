
$ambientboost
$mostlyopaque

$modelname weapons/v_stunstick

$include _v_models_hl2_definebones.qci

$model HEV c_arms_hev

$pushd v_amerk

$hboxset "Inaki"

$definebone "ValveBiped.cube" "ValveBiped.Bip01_Spine2" 0.548410 63.659550 13.992369 -65.006531 141.476114 -120.181223 0 0 0.000001 0.000002 0 0.000003

$model "Mk.I Trench Knife" v_amerk_ref

// $sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 9.00 node "Ready"
// $sequence punch1 "punch1_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 31.00
// $sequence punch2 "punch2_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 36.00
// $sequence knifebutt "knifebutt_fixed" snap ACT_VM_PRIMARYATTACK 1 fps 31.00
// $sequence slash2 "slash2_fixed" snap ACT_VM_SECONDARYATTACK 1 fps 33.00
// $sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 30.00 {
  // { event 5004 1 "Weapon_Knife.Draw" }
// }

$sequence idle "idle_fixed" loop ACT_VM_IDLE 1 fps 9.00 node "Ready"

$sequence knifebutt "knifebutt_fixed" snap ACT_VM_MISSCENTER 1 fps 60

$sequence knifebutt2 "knifebutt_fixed" snap ACT_VM_HITCENTER 1 fps 60

$sequence knifebutt3 "knifebutt_fixed" snap ACT_VM_HITKILL 1 fps 60

$sequence draw "draw_fixed" snap ACT_VM_DRAW 1 fps 60

$popd

$cdmaterials models/weapons/v_hand
$cdmaterials models/weapons/v_models/amerk
$cdmaterials models/weapons/amerk
