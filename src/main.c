#include <stdio.h>
#include <SDL2/SDL.h>
#include <gsl/gsl_blas.h>
#include <gsl/gsl_math.h>

#include "main.h"

int main(int argc, char** argv)
{
    /* create structures here */
    // graphics structure
    Window window;

    // physics structure
    World world;

    /* Program Initialization
     * intialize all structures
     * create the graphics of the environment
     * handle errors that occured in the process*/
    Init(&window, &world);

    /* Program Run 
     * process all the rendering
     * process dynamics
     * process events
     * process exit and errors*/
    Run(&window, &world);

    return 0;
}

/* void Init(Window*, Physics*)
 * This function processes all the one time setups.
 * For example, creating a window (and probably
 * loading some opening animation); and, set physics
 * attributes.*/
void Init(Window* window, Physics* physics)
{
}

/* void Run(Window*, Physics*)
 * All the repeative tasks*/
void Run(Window* window, Physics* physics)
{
}
