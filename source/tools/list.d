module tools.list;

class List(T) {
    /// Methods
    this()
    {
        size = 0;
        data.length = 0; // allocSize

        allocStep = 64;
    }

    void push(T item) {
        if(size >= data.length) {
            data.length += allocStep;
        }

        data[size] = item;

        size++;
    }

    ref T opIndex(ulong index) {
        return data[index];
    }

    ~this() {
        data.destroy();
    }

    /// Variables
    ulong size = 0;
    ulong allocStep = 64;

    T[] data;

    // Subtyping is very cool.
    // Until you realize it dont work very well.
    // alias data this;
}
