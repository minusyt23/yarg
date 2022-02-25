module engine.dispatcher;

import std.stdio;
import tools.list;
import engine.message;

class Dispatcher {
    /// Methods
    this() {
        queue = new List!(Message);
    }

    void dispatch() {
        for(int i = 0; i < queue.size; i++) {
            queue[i].action();
        }
    }

    /// Variables
    List!(Message) queue;
}
