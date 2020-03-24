#include <iostream>
#include "../../include/toyMain.hh"
#include "../../include/toyDll.hh"
using namespace std;

int main(int argc, char ** argv)
{
  // Output arguments
  cout << "[INFO] Received " << argc << " inputs arguments:" << endl;
  for (int i=0; i<argc; i++)
  {
    cout << "[INFO] " << i+1 << " : " <<argv[i] << endl;
  }
  if (argc<3)
  {
    cout << "Need 2 arguments to do the sum. Example: ./bin/toyMain 1 2 " << endl;
    return 1;
  }

  // Call the toyDll library funciton
  cout << "Sum is " << addFunc(stod(argv[1]), stod(argv[2])) << endl;

  return 0;
}
