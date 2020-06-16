#include<iostream>
#include<string>
#include<stdio.h>
#include<string.h>
using namespace std;


//homework 2
/*
堆内存与栈内存的区别
1. 堆允许程序在运行时动态地申请某个大小的内存空间。栈内存在函数中定义的一些基本类型的变量和对象的引用变量
都在函数的栈内存中分配。

2.堆内存实际上指的就是优先队列的一种数据结构，第1个元素有最高的优先权；栈内存实际上就是满足先进后出的性质
的数学或数据结构。栈内存是存取速度比堆要快，仅次于寄存器，栈数据可以共享。

3.堆内存中分配的内存需要程序员手动释放，如果不释放，而系统内存管理器又不自动回收这些堆内存的话动态分配堆内
存，那就一直被占用。栈内存中为这个变量分配内存空间，当超过变量的作用域后，Java会自动释放掉为该变量所分配的
内存空间，该内存空间可以立即被另作他用。

*/



int g_sumNum = 0;

class mystring{
    /*
        实现string.ifempty(),string.length(),string.clear(),string.append(),
       s.pop_back()，string.reverse(),str1+str2,,str1=str2,str1==str2等功能。
    */

    public:
        char* str;
    private:
        int len;

    public:
        friend mystring operator+(mystring &a, mystring &b);
        mystring& operator = (mystring&  other)
        {
            this->len = other.length();
            str=new char[this->len];
            for(int i=0;i<this->len;i++){
                str[i]=other.str[i];
            }
            return *this;
        }

    public:
        mystring(){
            this->str=NULL;
            this->len=0;
        }

        mystring( char *list )//无返回值、参数是个char的指针
        {
            this->len = strlen(list) + 1;//看一下字符串的长度
            str = new char[this->len];//开辟字符串长度的空间，给‘\0’留个空间
            strcpy(str,list);//将字符串拷贝到开辟的空间中
            this->len--;
        }

        mystring(string str){
            this->len=str.length();
            this->str=new char[this->len];
            for(int i=0;i<str.length();i++){
                this->str[i]=str[i];
            }
        }
        

        mystring(const mystring& b){
            this->len=b.len;
            this->str=b.str;
        }
        ~mystring(){
            this->len=0;
            delete []this->str;
        }
        bool ifempty(){
            return (this->len==0);
        }
        int length(){
            return this->len;
        }
        void clear(){
            this->str="";
            this->len=0;
        }
        char* append(string str){
            string temp(&this->str[0],&this->str[this->len]);
            int orgin_len=this->len;
            temp=temp+str;
            this->len=temp.length();
            this->str=new char[this->len];
            for(int i=0;i<this->len;i++){
                this->str[i]=temp[i];
            }
            return this->str;
        }
        void print(){
            for(int i=0;i<len;i++){
                cout<<this->str[i];
            }
            cout<<endl;
        }
        char pop(){
            char last_one=this->str[this->len-1];
            this->str[this->len-1]='\0';
            this->len--;
            return last_one;
        }
        void reverse(){
            //反转
            int swap_times=this->len/2;
            for(int i=0;i<swap_times;i++){
                char temp=this->str[i];
                this->str[i]=this->str[this->len-i-1];
                this->str[this->len-i-1]=temp;
            }
        }

        bool operator==(mystring b){
            if(this->len==b.length()){
                for (int i = 0; i < this->len; i++)
                {
                    // cout<<this->str[i]<<" "<<b.str[i]<<endl;
                    //cout<<b.str[i]<<endl;
                    // cout<<this->str[i]<<endl;
                    if (this->str[i]!=b.str[i])
                    {
                        return false;
                    }
                }
                return true;               
            }
            else
            {
                return false;
            }
        }


};

mystring operator+(mystring &a, mystring &b){
    mystring temp;
    temp.len=a.length()+b.length();
    temp.str=new char[temp.len];
    	for(int i=0;i<a.length();i++)
		temp.str[i] = a.str[i];
	for(int i=0;i<b.length();i++)
		temp.str[a.length()+i] = b.str[i];
	return temp;

}


void change_number(int x, int y){
    g_sumNum = x+y;
}


int main(){
    //homework 1
    int x=1;
    int y=3;
    cout<<"homework1:"<<endl;
    cout<<"before change, the number is "<<g_sumNum<<endl;
    change_number(x,y);
    cout<<"after change: "<<g_sumNum<<endl;


    //homework 3
    cout<<endl;
    cout<<"homework3:"<<endl;
    mystring astr("wyk");
    mystring bstr(" drinks cola");

    cout<<"list1 is ";
    astr.print();
    cout<<"list2 is ";
    bstr.print();
    cout<<"拼接list1与list2,得到list3:"<<endl;
    mystring sentence=astr+bstr;
    sentence.print();
    cout<<"list3的长度："<<endl;
    cout<<sentence.length()<<endl;
    cout<<"反转list3:"<<endl;
    sentence.reverse();
    sentence.print();
    cout<<"弹出list1中的最后一个字符..."<<endl;
    char receive=astr.pop();
    cout<<"list1现在是："<<endl;
    astr.print();
    cout<<"The last one is "<<receive<<endl;
    cout<<"在list1后添加kmoney"<<endl;
    astr.append("kmoney");
    astr.print();
    cout<<"将list1赋值给list2"<<endl;
    cout<<"list1: ";
    astr.print();
    bstr=astr;
    cout<<"list2: ";
    bstr.print();
    astr.print();
    cout<<"比较list1 和 list2 是否相等: "<<(astr==bstr)<<endl;
    cout<<"比较list1 和 list3 是否相等: "<<(astr==sentence)<<endl;

    return 0;
}

