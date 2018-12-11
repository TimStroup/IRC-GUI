#pragma once
#include <string>
#include <vector>
using namespace std;

class channelBuffer{
    public:
	channelBuffer(string name);
    string dumpMessages();
	void addMessage(string message);
	vector<string> messages;
    string name;

};
