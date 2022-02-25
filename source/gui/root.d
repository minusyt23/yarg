module gui.root;

import gui.widget;
import tools.list;

class Root : Widget {

    /// Methods
    this() {
        super();
        root = this;
        allWidgets = new List!(Widget);
    }

    override void update() {

    }

    /// Variables
    List!(Widget) allWidgets;
}