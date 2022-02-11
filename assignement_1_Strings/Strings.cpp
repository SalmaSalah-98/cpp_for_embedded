#include <iostream>
#include <string>
#include <sstream>
#include <vector>
using namespace std;

#define Music1 "mp3"
#define Music2 "aac"
#define Music3 "flac"

#define Image1 "jpg"
#define Image2 "bmp"
#define Image3 "gif"

#define Movie1 "mp4"
#define Movie2 "avi"
#define Movie3 "mkv"


// Function to calculate the size of One test case : it takes some of Lines(String) for calculations
void file_size(string test_cases )
{
	stringstream fs(test_cases);//For group of lines (One Test Case)
	string line;
	string last_word;
	string file_extension;
	string file_size;
	int music_size = 0 , image_size = 0, movie_size= 0 , others_size=0;
	int x;
	
	while (getline(fs, line, '\n'))
		{
			stringstream linestream(line);//For Individual Line
			while(getline(linestream, last_word, '.'))
			{
			}
			cout << last_word<<endl;
			stringstream last_wordstream(last_word);
			getline(last_wordstream, file_extension, ' ');
			cout << "Extension : "<<file_extension<<endl;
			getline(last_wordstream, file_size, 'b');
			cout << "size : "<<file_size<<endl;
			stringstream s,s_total;
			if ((file_extension == Music1) | (file_extension == Music2)|(file_extension == Music3))
			{
				s << file_size;
				s >> x;//new number
				s_total >> music_size;
				music_size += x;
			}	
			else if ((file_extension == Image1) | (file_extension == Image2)|(file_extension == Image3))
			{
				s << file_size;
				s >> x;//new number
				s_total >> image_size;
				image_size += x;
			}
			else if((file_extension == Movie1) | (file_extension == Movie2) | (file_extension == Movie3))
			{
				s << file_size;
				s >> x;//new number
				s_total >> movie_size;
				movie_size += x;
				
			}
			else
			{
				s << file_size;
				s >> x;//new number
				s_total >> others_size;
				others_size += x;
			}
		
		}

			cout << "music " << music_size<<"b"<< " images " <<image_size<<"b"<<" movies "<<movie_size<<"b"<<" other "<<others_size<<"b"<<endl;
		    /*
			cout << "Music size = "<< music_size<<endl;
			cout << "Image size = "<< image_size<<endl;
			cout << "Movie size = "<< movie_size<<endl;
			cout << "others_size = "<< others_size<<endl;
			*/	
}

int main()
{
	//string input = "dragons_Song .mp3 11b\ntheGreatGig.flac 1000b\nfile.txt 5b\nout.gif 100b\ninception.jpg 10000b\nout.exe 100b\ninception.mkv 10000b";


/***************************  Enter The String Input Here  **********************************************************/	
	/*  Sample to Test Code */
	string new_input ="2 3 2 \ndragons_Song .mp3 11b\ntheGreatGig.flac 1000b\nfile.txt 5b\nout.exe 100b\ninception.mkv 10000b";
/*****************************   ********************************************************/	
	


	string First_Line,str_num="",str;
	stringstream ss;
	int int_num1,Line_num;
	string Enter;
	//To get the First Line 
	stringstream All_lines(new_input);
	getline(All_lines, First_Line, '\n');
	//cout << First_Line<<endl;
	
	//To get First Number (Number of test cases)
	stringstream Numbers(First_Line) ;
	ss << First_Line;
	ss >> int_num1;
	//cout<<"Number 1 :"<<int_num1;
	
	string new_Enter="" ;
	
	while (int_num1)
	{
		ss <<First_Line;
		ss >> Line_num; // To get the number of lines of Test Case (1)
 		//cout<<"\nNumber : "<<Line_num<<endl;
		while(Line_num)
		{
		  getline(All_lines, Enter,'\n');
		  new_Enter += Enter+"\n";
		 
		  Line_num --;
		}
		cout <<"Strings :"<<new_Enter<<endl;
		file_size(new_Enter);
		new_Enter="";
		
		int_num1--;
	}
	
	return 0;
}