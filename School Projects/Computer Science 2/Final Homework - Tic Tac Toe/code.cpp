#include <iostream>

//Class files
#include "Game.h"
#include "Score.h"

using namespace std;

//Game class function for accepting the amount of games
void Game::totalnumofGames(int num)
{
    //Send result to numofGames
    numofGames = num;
}

//Game class function for check for the next next round 
bool Game::nextRoundCheck()
{
    //Check if the tracker is less than or equal to the numofGames
    if (tracker < numofGames)
    {
        tracker++;
        cout << "Round " << tracker <<"! Fight!" << endl;
        return true;
    }
    else
        return false;
}

// Set/reset the game each time
void Game::initalizeGame()
{
    //Since the board response is going to be by a number system (p1 is number 1, and computer is number 2), 
    //set all the arrays to zero
    cout << "Initalizing game..." << endl;
    board[0][0] = 0;
    board[0][1] = 0;
    board[0][2] = 0;
    board[1][0] = 0;
    board[1][1] = 0;
    board[1][2] = 0;
    board[2][0] = 0;
    board[2][1] = 0;
    board[2][2] = 0;
    cout << "Game initialzed! Good luck!" << endl;
    
}

// Check if the player or computer wins
bool Game::winnercheck (int& win)
{
    //Option 1: (1,1) (1,2)(1,3)
    if (board[0][0] == 1 && board[0][1] == 1 && board[0][2] == 1)
    {
        win = 1;
        return true;
    }
    else if (board[0][0] == 2 && board[0][1] == 2 && board[0][2] == 2)
    {
        win = 2;
        return true;
    }
    
    //Option 2: (2,1) (2,2)(2,3)
    else if (board[1][0] == 1 && board[1][1] == 1 && board[1][2] == 1)
    {
        win = 1;
        return true;
    }
    else if (board[1][0] == 2 && board[1][1] == 2 && board[1][2] == 2)
    {
        win = 2;
        return true;
    }
    
    //Option 3: (3,1) (3,2)(3,3)
    else if (board[2][0] == 1 && board[2][1] == 1 && board[2][2] == 1)
    {
        win = 1;
        return true;
    }
    else if (board[2][0] == 2 && board[2][1] == 2 && board[2][2] == 2)
    {
        win = 2;
        return true;
    }
    
    //Option 4: (1,1) (2,1)(3,1)
    else if (board[0][0] == 1 && board[1][0] == 1 && board[2][0] == 1)
    {
        win = 1;
        return true;
    }
    else if (board[0][0] == 2 && board[1][0] == 2 && board[2][0] == 2)
    {
        win = 2;
        return true;
    }
    
    //Option 5: (1,2) (2,2)(3,2)
     else if (board[0][1] == 1 && board[1][1] == 1 && board[2][1] == 1)
    {
        win = 1;
        return true;
    }
    else if (board[0][1] == 2 && board[1][1] == 2 && board[2][1] == 2)
    {
        win = 2;
        return true;
    }
    
    //Option 6: (1,3) (2,3)(3,3)
    else if (board[0][2] == 1 && board[1][2] == 1 && board[2][2] == 1)
    {
        win = 1;
        return true;
    }
    else if (board[0][2] == 2 && board[1][2] == 2 && board[2][2] == 2)
    {
        win = 2;
        return true;
    }
    
    //Option 7: (1,1) (2,2)(3,3)
    else if (board[0][0] == 1 && board[1][1] == 1 && board[2][2] == 1)
    {
        win = 1;
        return true;
    }
    else if (board[0][0] == 2 && board[1][1] == 2 && board[2][2] == 2)
    {
        win = 2;
        return true;
    }
    
    //Option 8: (1,3) (2,2)(3,1)
    else if (board[0][2] == 1 && board[1][1] == 1 && board[2][0] == 1)
    {
        win = 1;
        return true;
    }
    else if (board[0][2] == 2 && board[1][1] == 2 && board[2][0] == 2)
    {
        win = 2;
        return true;
    }
    else
        return false;
}

//Player choice function
void Game::playerchoice(int& choice)
{
    cout << "Your move = ";
    cin >> choice;
    
    while (choice < 1 || choice > 9)
    {
        cout << "Invalid space; try again. ";
        cin >> choice;
        cout << endl;
    }
    
}

// Check if the player is valid
bool Game::checkifplayervalid(int num)
{

            if (num == 1 && board[0][0] == 0)
            {
                board[0][0] = 1;
                return true;
            }
        else if (num == 2 && board[0][1] == 0)
            {
                board[0][1] = 1;
                return true;
            }
        else if (num == 3 && board[0][2] == 0)
            {
                board[0][2] = 1;
                return true;
            }
        else if (num == 4 && board[1][0] == 0)
            {
                board[1][0] = 1;
                return true;
            }
            else if (num == 5 && board[1][1] == 0)
            {
                board[1][1] = 1;
                return true;
            }
            else if (num == 6 && board[1][2] == 0)
            {
                board[1][2] = 1;
                return true;
            }
            else if (num == 7 && board[3-1][1-1] == 0)
            {
                board[3-1][1-1] = 1;
                return true;
            }
            else if (num == 8 && board[3-1][2-1] == 0)
            {
                board[3-1][2-1] = 1;
                return true;
            }
            else if ( num == 9 &&board[3-1][3-1] == 0)
            {
                board[3-1][3-1] = 1;
                return true;
            }
            else
                return false;
}

void Game::showBoard()
{
    //Show table
    
    //======ROW 1===================
    cout << "+---+---+---+" << endl
        << "|";
        
    //Square 1
    if (board[1-1][1-1] == 0)
        cout << "   ";
    else if (board[1-1][1-1] == 1)
        cout << " X ";
    else if (board[1-1][1-1] == 2)
        cout << " O ";
    cout << "|";
    
    //Square 2
    if (board[1-1][2-1] == 0)
        cout << "   ";
    else if (board[1-1][2-1] == 1)
        cout << " X ";
    else if (board[1-1][2-1] == 2)
        cout << " O ";
    cout << "|";
    
    //Square 3
    if (board[1-1][3-1] == 0)
        cout << "   ";
    else if (board[1-1][3-1] == 1)
        cout << " X ";
    else if (board[1-1][3-1] == 2)
        cout << " O ";
    cout << "|";
    cout << endl;
    
    //======ROW 2===================
    cout << "+---+---+---+" << endl
        << "|";
        
    //Square 4
    if (board[2-1][1-1] == 0)
        cout << "   ";
    else if (board[2-1][1-1] == 1)
        cout << " X ";
    else if (board[2-1][1-1] == 2)
        cout << " O ";
    cout << "|";
    
    //Square 5
    if (board[2-1][2-1] == 0)
        cout << "   ";
    else if (board[2-1][2-1] == 1)
        cout << " X ";
    else if (board[2-1][2-1] == 2)
        cout << " O ";
    cout << "|";
    
    //Square 6
    if (board[2-1][3-1] == 0)
        cout << "   ";
    else if (board[2-1][3-1] == 1)
        cout << " X ";
    else if (board[2-1][3-1] == 2)
        cout << " O ";
    cout << "|";
    cout << endl;
    
    //======ROW 3===================
    cout << "+---+---+---+" << endl
        << "|";
        
    //Square 7
    if (board[3-1][1-1] == 0)
        cout << "   ";
    else if (board[3-1][1-1] == 1)
        cout << " X ";
    else if (board[3-1][1-1] == 2)
        cout << " O ";
    cout << "|";
    
    //Square 8
    if (board[3-1][2-1] == 0)
        cout << "   ";
    else if (board[3-1][2-1] == 1)
        cout << " X ";
    else if (board[3-1][2-1] == 2)
        cout << " O ";
    cout << "|";
    
    //Square 9
    if (board[3-1][3-1] == 0)
        cout << "   ";
    else if (board[3-1][3-1] == 1)
        cout << " X ";
    else if (board[3-1][3-1] == 2)
        cout << " O ";
    cout << "|";
    cout << endl;
    cout << "+---+---+---+" << endl;
}

void Game::computerchoice ()
{
    //For random choice
    int i = rand() % 2;
    int j = rand() % 2;
    int *ptrI = nullptr;
    int *ptrJ = nullptr;
    ptrI = &i;
    ptrJ = &j;
    
    cout << "O's move" << endl;
        
        // Square 2
        if ((((board[1-1][1-1] == 1 && board[1-1][3-1] == 1) || (board[1-1][1-1] == 2 && board[1-1][3-1] == 2)) && // Horizontal
            ((board[2-1][2-1] == 1 && board[3-1][2-1] == 1) || (board[2-1][2-1] == 2 && board[3-1][2-1] == 2))) // Vertical
            && board[1-1][2-1] == 0)
            board[1-1][2-1] = 2;
            
        // Square 1
        else if ((((board[1-1][2-1] == 1 && board[1-1][3-1] == 1) || (board[1-1][2-1] == 2 && board[1-1][3-1] == 2)) && // Horizontal
                ((board[2-1][1-1] == 1 && board[3-1][1-1] == 1) || (board[2-1][1-1] == 2 && board[3-1][1-1] == 2)) && // Vertical
                ((board[2-1][2-1] == 1 && board[3-1][3-1] == 1) || (board[2-1][2-1] == 2 && board[3-1][3-1] == 2))) // Diag
                && board[1-1][1-1] == 0)
            board[1-1][1-1] = 2;
            
        // Square 3
        else if ((((board[1-1][1-1] == 1 && board[1-1][2-1] == 1) || (board[1-1][1-1] == 2 && board[1-1][2-1] == 2)) && //Horizontal
                ((board[2-1][3-1] == 1 && board[3-1][3-1] == 1) || (board[2-1][3-1] == 2 && board[3-1][3-1] == 2)) && // Vertucal
                ((board[3-1][1-1] == 1 && board[2-1][2-1] == 1) || (board[1-1][1-1] == 2 && board[2-1][2-1] == 2))) // Diag
                && board[1-1][3-1] == 0)
            board[1-1][3-1] = 2;
            
        // Square 5
        else if ((((board[2-1][1-1] == 1 && board[2-1][3-1] == 1) || (board[2-1][1-1-1] == 2 && board[2-1][3-1] == 2)) && //Horizontal
                ((board[1-1][2-1] == 1 && board[3-1][2-1] == 1) || (board[1-1][2-1] == 2 && board[3-1][2-1] == 2)) && //Vertical
                ((board[1-1][1-1] == 1 && board[3-1][3-1] == 1) || (board[1-1][1-1] == 2 && board[3-1][3-1] == 2)) && //Diag 1
                ((board[3-1][1-1] == 1 && board[1-1][3-1] == 1) || (board[3-1][1-1] == 2 && board[1-1][3-1] == 2))) //Diag 2
                && board[2-1][2-1] == 0)
            board[2-1][2-1] = 2;
            
        // Square 4
        else if ((((board[2-1][2-1] == 1 && board[2-1][3-1] == 1) || (board[2-1][2-1] == 2 && board[2-1][3-1] == 2)) && //Horizontal
                ((board[1-1][1-1] == 1 && board[3-1][1-1] == 1) || (board[1-1][1-1] == 2 && board[3-1][1-1] == 2))) //Vertical
                && board[2-1][1-1] == 0)
            board[2-1][1-1] = 2;
        
        // Square 6
        else if ((((board[2-1][1-1] == 1 && board[2-1][2-1] == 1) || (board[2-1][1-1] == 2 && board[2-1][2-1] == 2)) && //Horizontal
                ((board[1-1][3-1] == 1 && board[3-1][3-1] == 1) || (board[1-1][3-1] == 2 && board[3-1][3-1] == 2))) // Vertical 
                && board[2-1][3-1] == 0)
            board[2-1][3-1] = 2;
            
        // Square 8
        else if ((((board[3-1][1-1] == 1 && board[3-1][3-1] == 1) || (board[3-1][1-1] == 2 && board[3-1][3-1] == 2)) && //Horizontal
                ((board[1-1][2-1] == 1 && board[2-1][2-1] == 1) || (board[1-1][2-1] == 2 && board[2-1][2-1] == 2))) //Vertical
                && board[3-1][2-1] == 0)
            board[3-1][2-1] = 2;
            
        //Square 7
        else if ((((board[3-1][2-1] == 1 && board[3-1][3-1] == 1) || (board[3-1][2-1] == 2 && board[3-1][3-1] == 2)) && //Horizontal
                ((board[1-1][1-1] == 1 && board[2-1][1-1] == 1) || (board[1-1][1-1] == 2 && board[2-1][1-1] == 2)) && //Vertical 
                ((board[2-1][2-1] == 1 && board[1-1][3-1] == 1) || (board[2-1][2-1] == 2 && board[1-1][3-1] == 2))) //Diagonal 
                && board[3-1][1-1] == 0)
            board[3-1][1-1] = 2;
        
        // Square 9
        else if ((((board[3-1][1-1] == 1 && board[3-1][2-1] == 1) || (board[3-1][1-1] == 2 && board[3-1][2-1] == 2)) && //Horizontal
                ((board[1-1][3-1] == 1 && board[2-1][3-1] == 1) || (board[1-1][3-1] == 2 && board[2-1][3-1] == 2)) && //Vertical 
                ((board[1-1][1-1] == 1 && board[2-1][2-1] == 1) || (board[1-1][1-1] == 2 && board[2-1][2-1] == 2))) //Diagonal
                && board[3-1][3-1] == 0)
            board[3-1][3-1] = 2;
            
        //Random
        else
            while (board[*ptrI][*ptrJ] !=0)
            {
                i = rand() % 3;
                j = rand() % 3;
            }
            board[*ptrI][*ptrJ] = 2;
    //}
}

void Score::announcescore(int win)
{
    if (win == 1)
    {
        playerscore++;
        cout << "X wins!" << endl;
    }
    else if (win == 2)
    {
        computerscore++;
        cout << "O wins!" << endl;
    }
}

void Score::announcewinner(int num)
{
    cout << endl;
    cout << "Final results: " << endl;
    cout << "X wins " << playerscore << " games" << endl;
    cout << "O wins " << computerscore << " games" << endl;
    cout << ".. of the " << num << " game set" << endl;
}

bool Game::checkemptyspots()
{
    if ((board[0][0] == 0 || board[0][1] == 0 || board[0][2] == 0 ||
        board[1][0] == 0 || board[1][1] == 0 || board[1][2] == 0 ||
        board[2][0] == 0 || board[2][1] == 0 || board[2][2] == 0))
        return true;
    else
        return false;
}

int main()
{
    
    //Variable classes
    Game board;
    Score scoreboard;
// STAGE 1 
/*So for this part of the program, we just display on screen. Then we ask the player how many
games they want to play. (It only goes up to 10, any more or less is invalid) Now we have to find a 
way for the program to keep track of what game number the player is on.*/
    
    // Display intro
    cout << "Welcome to Tic-Tac-Toe!" << endl;
    cout << "You are X and will go first" << endl;
    cout << "Make a play by typing which square you want to enter your X" << endl;
    
    //Show table 
    cout << endl;
    cout << "+---+---+---+" << endl
        << "| 1 | 2 | 3 |" << endl
        << "+---+---+---+" << endl
        << "| 4 | 5 | 6 |" << endl
        << "+---+---+---+" << endl
        << "| 7 | 8 | 9 |" << endl
        << "+---+---+---+" << endl;
    
    // Prompt the number of games
    int numofGames; // This is a holder to give to the class
    cout << "How many games would you like to play? Type an integer 1-10 and hit [Enter] ";
    cin >> numofGames;
    cout << endl;
    
    //Check if it is valid 
    while (numofGames < 1 || numofGames > 10)
    {
        cout << "Invalid number. Try again. ";
        cin >> numofGames;
    }
    
    //Give numofGames to Game class
    board.totalnumofGames(numofGames);
    
// STAGE 2 
// For this stage, we initalize the board and let the player choose
// a spot first

    int winner = 0; //1 for player, 2 for Computer
    int choice = 0; //player choice
    
    while (board.nextRoundCheck() == true)
        {
            //Initalize the game
            board.initalizeGame();
            
            //Let the game start!
            while (board.checkemptyspots() == true)
            {
                //Player turn
                board.playerchoice(choice);
                while ((board.checkifplayervalid(choice) == false))
                {
                    cout << "That spot's taken. Choose a different one." << endl;
                    board.playerchoice(choice);
                }
		
		//Show the board
		board.showBoard();
		
		// IF player wins by last move, game over
		 if (board.winnercheck(winner) == true)
            break;
                
        //Computer turn
        if (board.checkemptyspots() == true)
        {
            board.computerchoice();

		    //Show the board
		    board.showBoard();
        }
        
        // If computer wins by last move, game over
        if (board.winnercheck(winner) == true)
            break;
            }
            
            //If anyone wins (winnercheck = true), announce the winner
            if (winner == 1 || winner == 2)
                scoreboard.announcescore(winner);
            else
                cout << "It's a tie! No one wins. :/" << endl;
        }
// STAGE 3 
// Announce the winner
    scoreboard.announcewinner(numofGames);
    return 0;
}