# DoubleUnity
Simple app for running multiple Unity3D instances.

Lauching an app simply causes Unity3D new instance start, no matter how much instances of Unity3D are already running.
After creating new Unity3D instance app terminates iteself. 

Checked with Unity3D version 2017.1.2p3 but should work with any other version as it's just a bash script wrapper.
Double Unity will run on Mac OS X 10.9 and higher. If you want to launch it on earlier os versions check the sources and rewrite the code in Objective-C language (10.9 just becuse it's written in Swift).

If you have troubles with the app (app crushes or doesn't start new Unity3d instance) try to do the following steps:
  -- open Terminal
  -- locate where DoubleUnity app is
  -- execute the following comang: chmod +x /path_to_DoubleUnity/Double\ Unity.app/Contents/Resources/UnityScript.command 
For example, if you have copied the app inside Applications folder, the command will look like:
    chmod +x /Applications/Double\ Unity.app/Contents/Resources/UnityScript.command 
    
If you have any questions be free to ask vmchar@outlook.com

