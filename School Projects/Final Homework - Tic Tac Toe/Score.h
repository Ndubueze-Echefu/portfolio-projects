class Score
{
	private:
		int playerscore = 0;
		int computerscore = 0;
		int winner;
	public:
		void announcescore(int win);
		void announcewinner(int num);
};