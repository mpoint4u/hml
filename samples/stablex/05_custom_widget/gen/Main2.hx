package ;

class Main2 extends ru.stablex.ui.widgets.HBox {

    var custom_initialized:Bool = false;

    @:isVar public var custom(get, set):ColorWidget;

    function set_custom(value:ColorWidget):ColorWidget {
        custom_initialized = true;
        return custom = value;
    }

    function get_custom():ColorWidget {
        /* ui/Main2.xml:7 characters: 2-13 */
        if (custom_initialized) return custom;
        custom_initialized = true;
        var res = new ColorWidget();
        this.custom = res;
        /* ui/Main2.xml:11 characters: 6-11 */
        res.color = 0x0000FF;
        /* ui/Main2.xml:10 characters: 6-7 */
        res.h = 100;
        /* ui/Main2.xml:9 characters: 6-7 */
        res.w = 200;
        res._onInitialize();
        res._onCreate();
        return res;
    }

    inline function get_click__0():flash.events.MouseEvent -> StdTypes.Void {
        /* ui/Main2.xml:14 characters: 4-9 */
        var res = function (event:flash.events.MouseEvent):StdTypes.Void { 
            custom.color = Std.random(0xFFFFFF);
            custom.refresh();
             };
        return res;
    }

    inline function get_paint__0():ru.stablex.ui.skins.Paint {
        /* ui/Main2.xml:19 characters: 4-14 */
        var res = new ru.stablex.ui.skins.Paint();
        /* ui/Main2.xml:19 characters: 16-21 */
        res.color = 0xF2B440;
        /* ui/Main2.xml:19 characters: 33-38 */
        res.alpha = .25;
        return res;
    }

    inline function get_button__0():ru.stablex.ui.widgets.Button {
        /* ui/Main2.xml:13 characters: 2-8 */
        var res = new ru.stablex.ui.widgets.Button();
        if(ru.stablex.ui.UIBuilder.defaults.exists("Button")) {
            var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
            for(def in ["Default"]) {
                var defaultsFn:ru.stablex.ui.widgets.Widget->Void = defFns.get(def);
                if(defaultsFn != null) defaultsFn(res);
            }
        }
        /* ui/Main2.xml:13 characters: 10-14 */
        res.text = 'set random color';
        res.addEventListener(flash.events.MouseEvent.CLICK, get_click__0());
        /* ui/Main2.xml:18 characters: 3-7 */
        res.skin = get_paint__0();
        res._onInitialize();
        res._onCreate();
        return res;
    }

    public function new() {
        /* ui/Main2.xml:3 characters: 1-5 */
        super();
        if(ru.stablex.ui.UIBuilder.defaults.exists("HBox")) {
            var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
            for(def in ["Default"]) {
                var defaultsFn:ru.stablex.ui.widgets.Widget->Void = defFns.get(def);
                if(defaultsFn != null) defaultsFn(this);
            }
        }
        /* ui/Main2.xml:3 characters: 20-32 */
        this.childPadding = 20;
        /* ui/Main2.xml:3 characters: 7-14 */
        this.padding = 20;
        this._onInitialize();
        this.addChild(custom);
        this.addChild(get_button__0());
        this._onCreate();
    }
}
