#include "main_game.h"

MainGame::MainGame()
{
    m_isRunning = false;
    m_window = nullptr;
    m_renderer = nullptr;
}

MainGame::~MainGame()
{
    SDL_DestroyRenderer(m_renderer);
    SDL_DestroyWindow(m_window);
    SDL_Quit();
}

void MainGame::run()
{
    initSystems();
    m_isRunning = true;

    while (m_isRunning)
    {
        processInput();
        updateGame();
        render();
    }
}

void MainGame::processInput()
{
    SDL_Event event;
    while (SDL_PollEvent(&event))
    {
        switch (event.type)
        {
        case SDL_QUIT:
            m_isRunning = false;
            break;
        }
    }
}

void MainGame::updateGame()
{
    // update game logic here
}
