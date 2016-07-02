# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# For each target create a dummy rule so the target does not have to exist
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Box2D/Debug/libBox2D.a:
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Box2D/MinSizeRel/libBox2D.a:
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Box2D/RelWithDebInfo/libBox2D.a:
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Box2D/Release/libBox2D.a:
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/freeglut/Debug/libfreeglut_static.a:
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/glui/Debug/libglui.a:
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/freeglut/MinSizeRel/libfreeglut_static.a:
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/glui/MinSizeRel/libglui.a:
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/freeglut/RelWithDebInfo/libfreeglut_static.a:
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/glui/RelWithDebInfo/libglui.a:
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/freeglut/Release/libfreeglut_static.a:
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/glui/Release/libglui.a:


# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.Box2D.Debug:
PostBuild.HelloWorld.Debug:
PostBuild.Box2D.Debug: /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/HelloWorld/Debug/HelloWorld
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/HelloWorld/Debug/HelloWorld:\
	/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Box2D/Debug/libBox2D.a
	/bin/rm -f /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/HelloWorld/Debug/HelloWorld


PostBuild.freeglut_static.Debug:
PostBuild.glui.Debug:
PostBuild.Testbed.Debug:
PostBuild.Box2D.Debug: /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/Debug/Testbed
PostBuild.freeglut_static.Debug: /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/Debug/Testbed
PostBuild.glui.Debug: /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/Debug/Testbed
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/Debug/Testbed:\
	/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Box2D/Debug/libBox2D.a\
	/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/freeglut/Debug/libfreeglut_static.a\
	/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/glui/Debug/libglui.a
	/bin/rm -f /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/Debug/Testbed


PostBuild.Box2D.Release:
PostBuild.HelloWorld.Release:
PostBuild.Box2D.Release: /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/HelloWorld/Release/HelloWorld
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/HelloWorld/Release/HelloWorld:\
	/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Box2D/Release/libBox2D.a
	/bin/rm -f /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/HelloWorld/Release/HelloWorld


PostBuild.freeglut_static.Release:
PostBuild.glui.Release:
PostBuild.Testbed.Release:
PostBuild.Box2D.Release: /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/Release/Testbed
PostBuild.freeglut_static.Release: /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/Release/Testbed
PostBuild.glui.Release: /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/Release/Testbed
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/Release/Testbed:\
	/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Box2D/Release/libBox2D.a\
	/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/freeglut/Release/libfreeglut_static.a\
	/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/glui/Release/libglui.a
	/bin/rm -f /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/Release/Testbed


PostBuild.Box2D.MinSizeRel:
PostBuild.HelloWorld.MinSizeRel:
PostBuild.Box2D.MinSizeRel: /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/HelloWorld/MinSizeRel/HelloWorld
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/HelloWorld/MinSizeRel/HelloWorld:\
	/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Box2D/MinSizeRel/libBox2D.a
	/bin/rm -f /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/HelloWorld/MinSizeRel/HelloWorld


PostBuild.freeglut_static.MinSizeRel:
PostBuild.glui.MinSizeRel:
PostBuild.Testbed.MinSizeRel:
PostBuild.Box2D.MinSizeRel: /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/MinSizeRel/Testbed
PostBuild.freeglut_static.MinSizeRel: /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/MinSizeRel/Testbed
PostBuild.glui.MinSizeRel: /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/MinSizeRel/Testbed
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/MinSizeRel/Testbed:\
	/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Box2D/MinSizeRel/libBox2D.a\
	/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/freeglut/MinSizeRel/libfreeglut_static.a\
	/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/glui/MinSizeRel/libglui.a
	/bin/rm -f /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/MinSizeRel/Testbed


PostBuild.Box2D.RelWithDebInfo:
PostBuild.HelloWorld.RelWithDebInfo:
PostBuild.Box2D.RelWithDebInfo: /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/HelloWorld/RelWithDebInfo/HelloWorld
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/HelloWorld/RelWithDebInfo/HelloWorld:\
	/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Box2D/RelWithDebInfo/libBox2D.a
	/bin/rm -f /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/HelloWorld/RelWithDebInfo/HelloWorld


PostBuild.freeglut_static.RelWithDebInfo:
PostBuild.glui.RelWithDebInfo:
PostBuild.Testbed.RelWithDebInfo:
PostBuild.Box2D.RelWithDebInfo: /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/RelWithDebInfo/Testbed
PostBuild.freeglut_static.RelWithDebInfo: /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/RelWithDebInfo/Testbed
PostBuild.glui.RelWithDebInfo: /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/RelWithDebInfo/Testbed
/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/RelWithDebInfo/Testbed:\
	/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Box2D/RelWithDebInfo/libBox2D.a\
	/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/freeglut/RelWithDebInfo/libfreeglut_static.a\
	/Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/glui/RelWithDebInfo/libglui.a
	/bin/rm -f /Users/TenmaYusuke/Desktop/Box2D_v2.3.0/Box2D/Testbed/RelWithDebInfo/Testbed


