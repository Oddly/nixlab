{ pkgs, ... }:

{
  home.file.".config/kxkbrc".text = ''
[Layout]
DisplayNames=,
LayoutList=us,us
LayoutLoopCount=-1
Options=caps:escape,grp:win_space_toggle,shift:both_capslock_cancel,compose:102
ResetOldOptions=true
ShowFlag=false
ShowLabel=true
ShowLayoutIndicator=true
ShowSingle=true
Use=true
VariantList=colemak_dh,
''; 
}


