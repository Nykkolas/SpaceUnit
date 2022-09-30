package;

import haxe.ui.containers.dialogs.Dialog;

@:build(haxe.ui.macros.ComponentMacros.build("assets/add-card-dialog.xml"))
class AddCardDialog extends Dialog {
    public function new() {
        super();
        buttons = DialogButton.CANCEL | Const.CREATE_BUTTON_TEXT;
    }
    
    public override function validateDialog(button:DialogButton, fn:Bool->Void) {
        var valid = true;
        if (button == Const.CREATE_BUTTON_TEXT) {
            if (cardTitle.text == "" || cardTitle.text == null) {
                // cardTitle.shake().flash();
                valid = false;
            } 
            if (cardDamages.text == "" || cardDamages.text == null) {
                valid = false;
            }
        }
        fn(valid);
    }
}
