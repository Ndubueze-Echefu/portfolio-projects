class Game
{
	private:
		int numofGames;
		int tracker = 0;
		int board [3][3];
	public:
		void initalizeGame();
		void showBoard();
		bool winnercheck(int& num);
		bool nextRoundCheck();
		void totalnumofGames(int num);
		void playerchoice(int& choice);
		void computerchoice();
		bool checkifplayervalid(int num);
		bool checkemptyspots();

};