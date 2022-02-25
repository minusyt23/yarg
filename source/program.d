module program;

import std.stdio;
import glfw3.api;

class Program {

    /// Methods
    this() {

    }

    void run() {
        glfwInit();

        window = glfwCreateWindow(800, 600, "Yarg", null, null);

        glfwSwapInterval(0); // Vsync

        while(!glfwWindowShouldClose(window)) {
            glfwSwapBuffers(window);
            glfwPollEvents();
        }
    }

    ~this() {
        glfwDestroyWindow(window);
        glfwTerminate();
    }

    /// Variables
    GLFWwindow* window;
}
