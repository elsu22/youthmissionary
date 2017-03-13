#include <iostream>
#include <fstream>
using namespace std;
class quiz
{
    public:
    int marks;
    char name[20];
    char yos[5];
    char degree[50];
    char dept[50];
    char s[100];
    char ans;
    void stu_details();
    void display();
    void define();
    quiz(){marks=0;}
};
void quiz::stu_details()
{
    cout<<"\n\tName of the student:";
    cin>>name;
    cout<<endl;
    cout<<"\tCurrent year of study:";
    cin>>yos;
    cout<<endl;
    cout<<"\tDegree persuing:";
    cin>>degree;
    cout<<endl;
    cout<<"\tDepartment:";
    cin>>dept;
    cout<<endl;
}
void quiz::display()
{
    ofstream fout;
    fout.open("result.txt",ios::app);
    cout<<"\n\t\t**********Results*************\n";
    cout<<name<<" got total "<<marks<<" out of 50\n";
    fout<<"Name:"<<name<<"\n";
    fout<<"Current year:"<<yos<<"\n";
    fout<<"Degree:"<<degree<<"\n";
    fout<<"Department:"<<dept<<"\n";
    fout<<"Marks:"<<marks<<"\n";
    fout<<"\t*****************\n";
    if(marks>=45)
        {cout<<name<<"!!You are a GENIUS!!!!";}
    else if(marks>=25&&marks<45)
        {cout<<name<<" Better luck next time";}
    else
       {
          cout<<name<<" Chill..its just a game..try hard";
       }
}

void quiz::define()
{
     ifstream fin;
    char answr;
      int i=1;
    int opt;
    cout<<"\n\tChoose your topic:\n\t1.India\n\t2.General Knowledge\n\t3.Geography";
    cout<<"\n\tEnter your choice:";
    cin>>opt;
    T :
  switch(opt){
    case 1:
        fin.open("question.txt");
        break;
    case 2:
        fin.open("question2.txt");
        break;
    case 3:
        fin.open("question3.txt");
        break;
    default:
        cout<<"\n\tEnter valid option";
        goto T;
        break;
  }
    while(fin.eof()==0)
    {
        fin.getline(s,100);
        cout<<endl<<s;
        if(i==5)
        {
            cout<<"\nYour answer:";
            cin>>ans;
            fin.get(answr);
            i=-1;
            if(ans==answr)
            {
                marks=marks+5;
                cout<<"\nCongratz!!your answer is correct.\n";
            }
            else
               {
                 cout<<"\nOoops...Wrong answer!!\n";
                cout<<"\nThe correct answer is:"<<answr;
               }
        }
        i++;
    }
    fin.close();
}
int main()
{
    quiz q;
    cout<<"\n\n\t\t*******QUIZ CONTEST********\n";
    q.stu_details();
    cout<<"\tRules to be noted:\n\n\t*For every correct answer 5 marks will be awarded.\n\n";
    cout<<"\t*Corresponding option has to be entered.\n\n";
    cout<<"\t*Lets start!!\n\n";
    L:
        cout<<"\t\tSelect your option:\n\n";
        cout<<"\t\t1.Start the quiz\n\n";
        cout<<"\t\t0.Quit the quiz..remember only cowards quits..\n\n";
        cout<<"Enter your choice:";
        int ch;
        cin>>ch;
        switch(ch)
        {
            case 1:q.define();
                   q.display();
                   break;
            case 0:cout<<"You opt to quit.";
                    break;
            default:cout<<"Type valid choice.";
                    goto L;
        }
        return 0;


}
