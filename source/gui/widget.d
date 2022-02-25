module gui.widget;

import gui.root;
import tools.list;
import tools.rect;

class Widget {

    /// Methods
    this() {
        children = new List!(Widget);
    }
    

    void addChild(Widget child) {
        child.root = root;
        child.parent = this;
        children.push(child);
        root.allWidgets.push(child);
    }

    void update() {

    }

    Widget parent;
    List!(Widget) children;
    Root root;

    Rect pos;
}