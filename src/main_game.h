#ifndef MAIN_GAME_H
#define MAIN_GAME_H

#include <SDL.h>

const int WINDOW_WIDTH = 800;
const int WINDOW_HEIGHT = 600;
const int FPS = 60;

class MainGame
{
public:
    MainGame();
    ~MainGame();

    void run();

private:
    void initSystems();
    void processInput();
    void updateGame();
    void render();

    SDL_Window* m_window;
    SDL_Renderer* m_renderer;
    bool m_isRunning;
};

#endif