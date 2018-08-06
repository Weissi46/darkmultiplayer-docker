# DMP Server Container

## Setup
This Container is compiled from the latest DarkMultiplayer source code. To compile, it needs the following files from the KSP directory:

 - Assembly-CSharp
 - Assembly-CSharp-firstpass
 - UnityEngine
 - UnityEngine.UI

They can be found in    KSP_Data/Managed and have to be placed in a directory called "libs" to use this dockerfile.

This dockerfile always uses the latest git commit from the DMP repository.
