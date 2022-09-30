package ;

import haxe.ui.HaxeUIApp;

class Main {
    public static function main() {
        var app = new HaxeUIApp();
        app.title = Const.APP_NAME;
        app.ready(function() {
            app.addComponent(new MainView());

            app.start();
        });
    }
}
