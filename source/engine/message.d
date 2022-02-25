module engine.message;
import tools.list;
import std.stdio;

// A message is a bunch of data.
class Message {
    this() {
        links = new List!(uint);
    }

    ~this() {
        links.destroy();
    }

    void action() {
        writeln("Simple Message");
    }

    /// Variables
    uint senderID;
    uint receiverID;
    List!(uint) links;
} 

class GuiButtonMessage : Message {
    override void action() {
        writeln("Gui Button Message");
    }
}