function [fig] = kiks_gui()

// Ouput variables initialisation (not found in input variables)
fig=[];

// Number of arguments in function call
[%nargout,%nargin] = argn(0)

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

// -----------------------------------------------------
//  (c) 2000-2004 Theodor Storm <theodor@tstorm.se>
//  http://www.tstorm.se
// -----------------------------------------------------
global("KIKS_GUI_COLOR")

loadmatfile("system" + filesep() + "kiks_gui")

yadd = 24;

// ! L.30: mtlb(mat0) can be replaced by mat0() or mat0 whether mat0 is an M-file or not.
// !! L.30: Matlab function figure not yet converted, original calling sequence used.
//h0 = figure("CloseRequestFcn","kiks_quit","DoubleBuffer","on","Color",[0,0,0],"Colormap",mtlb(mat0),"FileName","C:\sandbox\kiks\system\kiks_gui.m","Name","KiKS","NumberTitle","off","PaperPosition",[18,180,616,452],"PaperUnits","points","Position",[4,210,147,673+yadd],"RendererMode","manual","Menu","none","KeypressFcn","kiks_matlab_focus","ResizeFcn","kiks_gui_resize","Tag","KiKS","ToolBar","none","Visible","off","WindowButtonDownFcn","kiks_mouse_moveobj down","WindowButtonUpFcn","kiks_mouse_moveobj up");
h0 = figure("event_handler","kiks_gui_eventhandler",'event_handler_enable','on',"DoubleBuffer","on","Color",[0,0,0],"Colormap",mtlb(mat0),"FileName","C:\sandbox\kiks\system\kiks_gui.m","Name","KiKS","NumberTitle","off","PaperPosition",[18,180,616,452],"PaperUnits","points","Position",[4,210,147,673+yadd],"RendererMode","manual","Menu","none","KeypressFcn","kiks_matlab_focus","ResizeFcn","kiks_gui_resize","Tag","KiKS","ToolBar","none","Visible","off","WindowButtonDownFcn","kiks_mouse_moveobj down","WindowButtonUpFcn","kiks_mouse_moveobj up");

// !! L.37: Matlab function uicontrol not yet converted, original calling sequence used.
// L.37: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"ListboxTop",0,"Position",[3,92,143,356],"Style","frame","Tag","Frame1");// !! L.43: Matlab function uicontrol not yet converted, original calling sequence used.

// L.43: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"ListboxTop",0,"Position",[3,448,143,94],"Style","frame","Tag","kiksnet_frame");

// !! L.50: Matlab function uicontrol not yet converted, original calling sequence used.
// L.50: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_gui_vis2dtoggle","ListboxTop",0,"Position",[4,92,142,20],"String","enable visualization","Tag","toggle2dvis");

// !! L.59: Matlab function uicontrol not yet converted, original calling sequence used.
// L.59: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"FontName","verdana","FontWeight","bold","ListboxTop",0,"Position",[5,431,140,13],"String","simulation","Style","text","Tag","StaticText1");

// !! L.66: Matlab function uicontrol not yet converted, original calling sequence used.
// L.66: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"ListboxTop",0,"Position",[5,163,140,13],"String","interpolation limit","Style","text","Tag","text_interpolation_limit");

// ! L.75: mtlb(mat1) can be replaced by mat1() or mat1 whether mat1 is an M-file or not.
// !! L.75: Matlab function uicontrol not yet converted, original calling sequence used.
// L.75: (Warning name conflict: function name changed from uicontrol to %uicontrol).
options = strcat(cell2mat(mtlb(mat1)), '|');
h1 = uicontrol("Parent",h0,"BackgroundColor",[1,1,1],"Callback","kiks_gui_getlimitlistbox","ListboxTop",0,"Position",[5,143,140,20],"String",options,"Style","popupmenu","Tag","limit_popup","Value",4);

// ! L.84: mtlb(mat2) can be replaced by mat2() or mat2 whether mat2 is an M-file or not.
// !! L.84: Matlab function uicontrol not yet converted, original calling sequence used.
// L.84: (Warning name conflict: function name changed from uicontrol to %uicontrol).
options = strcat(cell2mat(mtlb(mat2)), '|');
h1 = uicontrol("Parent",h0,"BackgroundColor",[1,1,1],"Callback","kiks_gui_gettimescale","ListboxTop",0,"Position",[5,283,140,20],"String",options,"Style","popupmenu","Tag","timescale_popup","Value",2);

// ! L.93: mtlb(mat3) can be replaced by mat3() or mat3 whether mat3 is an M-file or not.
// !! L.93: Matlab function uicontrol not yet converted, original calling sequence used.
// L.93: (Warning name conflict: function name changed from uicontrol to %uicontrol).
options = strcat(cell2mat(mtlb(mat3)), '|');
h1 = uicontrol("Parent",h0,"BackgroundColor",[1,1,1],"Callback","kiks_gui_getstatlistbox","ListboxTop",0,"Position",[5,182,140,20],"String",options,"Style","popupmenu","Tag","stat_popup","Value",4);

// !! L.100: Matlab function uicontrol not yet converted, original calling sequence used.
// L.100: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"ListboxTop",0,"Position",[5,202,140,13],"String","movement limit","Style","text","Tag","text_movement_limit");

// !! L.106: Matlab function uicontrol not yet converted, original calling sequence used.
// L.106: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"ListboxTop",0,"Position",[3,598,143,75],"Style","frame","Tag","arena_frame");

// !! L.115: Matlab function uicontrol not yet converted, original calling sequence used.
// L.115: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"FontName","verdana","FontWeight","bold","ListboxTop",0,"Position",[6,660,138,11],"String","arena","Style","text","Tag","StaticText_arena");

// !! L.123: Matlab function uicontrol not yet converted, original calling sequence used.
// L.123: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_arena_window_clear","Enable","off","ListboxTop",0,"Position",[75,112,71,20],"String","redraw","Tag","arena_redraw");

// !! L.130: Matlab function uicontrol not yet converted, original calling sequence used.
// L.130: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"ListboxTop",0,"Position",[5,344,140,13],"String","simulated robot","Style","text","Tag","StaticText99");

// !! L.139: Matlab function uicontrol not yet converted, original calling sequence used.
// L.139: (Warning name conflict: function name changed from uicontrol to %uicontrol).
options = strcat(cell2mat(makecell([1,1]," ")), '|');
h1 = uicontrol("Parent",h0,"BackgroundColor",[1,1,1],"Callback","kiks_gui_simulaterobot","ListboxTop",0,"Position",[5,324,140,20],"String",options,"Style","popupmenu","Tag","simulate_popup","Value",1);

// !! L.146: Matlab function uicontrol not yet converted, original calling sequence used.
// L.146: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"ListboxTop",0,"Position",[5,303,140,13],"String","time mode","Style","text","Tag","text_time_mode");

// !! L.153: Matlab function uicontrol not yet converted, original calling sequence used.
// L.153: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_arena_new;","ListboxTop",0,"Position",[4,638,71,20],"String","new","Tag","arena_new");

// !! L.160: Matlab function uicontrol not yet converted, original calling sequence used.
// L.160: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_arena_edit;","ListboxTop",0,"Position",[75,638,71,20],"String","edit","Tag","arena_edit");

// !! L.168: Matlab function uicontrol not yet converted, original calling sequence used.
// L.168: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_arena_edit_mode;","ListboxTop",0,"Position",[4,618,142,20],"String","mode: draw","Tag","arena_edit_mode","visible","off");

// !! L.175: Matlab function uicontrol not yet converted, original calling sequence used.
// L.175: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_load;","ListboxTop",0,"Position",[4,618,71,20],"String","load","Tag","arena_load");

// !! L.182: Matlab function uicontrol not yet converted, original calling sequence used.
// L.182: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_save;","ListboxTop",0,"Position",[75,618,71,20],"String","save","Tag","arena_save");

// !! L.189: Matlab function uicontrol not yet converted, original calling sequence used.
// L.189: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_reset;","ListboxTop",0,"Position",[4,598,71,20],"String","reset","Tag","arena_reset");

// !! L.196: Matlab function uicontrol not yet converted, original calling sequence used.
// L.196: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_checkpoint;","ListboxTop",0,"Position",[75,598,71,20],"String","checkpoint","Tag","arena_checkpoint");// !! L.208: Matlab function uicontrol not yet converted, original calling sequence used.

// L.208: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",[1,1,1],"Callback","v=get(gco,''Value''); set(gco,''BackgroundColor'',[v/255, v/255, v/255])","Enable","on","ListboxTop",0,"Max",255,"Min",1,"Position",[4,598,142,20],"Style","slider","Tag","arena_color_slider","Value",255,"Visible","off");// !! L.214: Matlab function uicontrol not yet converted, original calling sequence used.

// L.214: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"ListboxTop",0,"Position",[3,543,143,55],"Style","frame","Tag","Frame1");


// !! L.223: Matlab function uicontrol not yet converted, original calling sequence used.
// L.223: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"FontName","verdana","FontWeight","bold","ListboxTop",0,"Position",[5,583,140,14],"String","objects","Style","text","Tag","StaticText2");

// !! L.230: Matlab function uicontrol not yet converted, original calling sequence used.
// L.230: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_spawn_object","ListboxTop",0,"Position",[75,562,71,20],"String","add","Tag","addobj");

// !! L.238: Matlab function uicontrol not yet converted, original calling sequence used.
// L.238: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_delete_object(10,1)","Enable","off","ListboxTop",0,"Position",[4,542,142,20],"String","delete selected","Tag","deleteobj");

// ! L.246: mtlb(mat4) can be replaced by mat4() or mat4 whether mat4 is an M-file or not.
// !! L.246: Matlab function uicontrol not yet converted, original calling sequence used.
// L.246: (Warning name conflict: function name changed from uicontrol to %uicontrol).
options = strcat(cell2mat(mtlb(mat4)), '|');
h1 = uicontrol("Parent",h0,"BackgroundColor",[1,1,1],"ListboxTop",0,"Position",[4,562,71,20],"String",options,"Style","popupmenu","Tag","objpopup","Value",1);

// !! L.254: Matlab function uicontrol not yet converted, original calling sequence used.
// L.254: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_stepsim","Enable","off","ListboxTop",0,"Position",[111,410,35,20],"String","| | >","Tag","stepsim");

// !! L.262: Matlab function uicontrol not yet converted, original calling sequence used.
// L.262: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_arena_window_grid","Enable","off","ListboxTop",0,"Position",[4,112,71,20],"String","grid","Tag","arena_grid");

//h1 = uicontrol('Parent',h0,'BackgroundColor',KIKS_GUI_COLOR,'Callback','kiks_gui_ixprox','Enable','off','HorizontalAlignment','left','ListboxTop',0,'Position',[6,120,15,15],'Style','checkbox','Tag','indexprox_chk','Value',1);

// ! L.281: mtlb(mat5) can be replaced by mat5() or mat5 whether mat5 is an M-file or not.
// !! L.281: Matlab function uicontrol not yet converted, original calling sequence used.
// L.281: (Warning name conflict: function name changed from uicontrol to %uicontrol).
options = strcat(cell2mat(mtlb(mat5)), '|');
h1 = uicontrol("Parent",h0,"BackgroundColor",[1,1,1],"Callback","kiks_gui_getcomplistbox","ListboxTop",0,"Position",[5,220,140,20],"String",options,"Style","popupmenu","Tag","compspeed_popup","Value",7);

// !! L.289: Matlab function uicontrol not yet converted, original calling sequence used.
// L.289: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"FontSize",14,"ListboxTop",0,"Position",[4,400,71,30],"String","00:00","Style","text","Tag","time");

// !! L.297: Matlab function uicontrol not yet converted, original calling sequence used.
// L.297: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"FontSize",8,"ListboxTop",0,"Position",[4,376,71,30],"String","100% (100%)","Style","text","Tag","speedup");

// !! L.307: Matlab function uicontrol not yet converted, original calling sequence used.
// L.307: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",[0,0,0],"FontWeight","light","ForegroundColor",[0.7,0.75,0.75],"HorizontalAlignment","right","ListboxTop",0,"Position",[113,41,31,13],"String"," ","Style","text","Tag","version");

// !! L.317: Matlab function uicontrol not yet converted, original calling sequence used.
// L.317: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",[0,0,0],"FontWeight","light","ForegroundColor",[0.7,0.75,0.75],"HorizontalAlignment","left","ListboxTop",0,"Position",[4,41,100,13],"String"," ","Style","text","Tag","reginfo");

h1 = uicontrol('Parent',h0,'Units','points','BackgroundColor',KIKS_GUI_COLOR,'HorizontalAlignment','left','ListboxTop',0,'Units','pixels','Position',[25,120,80.25,16],'String','fast proximity sensors','Style','text','Tag','StaticText6');

h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_pausesim","Enable","off","ListboxTop",0,"Position",[75,410,36,20],"String","| |","Tag","pausesim");

// !! L.345: Matlab function uicontrol not yet converted, original calling sequence used.
// L.345: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_halt","Enable","off","ListboxTop",0,"Position",[75,390,71,20],"String","halt","Tag","haltsim");

// !! L.353: Matlab function uicontrol not yet converted, original calling sequence used.
// L.353: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",[0.2666666666667,0.2980392156863,0.3686274509804],"Callback","kiks_tou;","ForegroundColor",[0.7,0.75,0.75],"ListboxTop",0,"Position",[4,73,142,16],"String","Terms of Use","Tag","webbtn");

// !! L.361: Matlab function uicontrol not yet converted, original calling sequence used.
// L.361: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",[0.2666666666667,0.2980392156863,0.3686274509804],"Callback","web www.tstorm.se ;","ForegroundColor",[0.7,0.75,0.75],"ListboxTop",0,"Position",[4,55,142,16],"String","http://www.tstorm.se","Tag","webbtn");

// !! L.369: Matlab function uicontrol not yet converted, original calling sequence used.
// L.369: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",[0.3686274509804,0.2980392156863,0.2666666666667],"Callback","kiks_reginfo;","ForegroundColor",[0.7,0.75,0.75],"ListboxTop",0,"Position",[4,23,142,16],"String","license data","Tag","licbtn");

// !! L.378: Matlab function uicontrol not yet converted, original calling sequence used.
// L.378: (Warning name conflict: function name changed from uicontrol to %uicontrol).
//"TooltipString","enter IP:port of the KiKSnet server you want to connect to."
h1 = uicontrol("Parent",h0,"BackgroundColor",[1,1,1],"HorizontalAlignment","left","ListboxTop",0,"Position",[48,488,96,18],"String","localhost","Style","edit","Tag","kiksnet_edit");

// !! L.385: Matlab function uicontrol not yet converted, original calling sequence used.
// L.385: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_server_connect;","ListboxTop",0,"Position",[4,468,142,20],"String","connect to KiKSnet server","Tag","kiksnet_btn");

// !! L.392: Matlab function uicontrol not yet converted, original calling sequence used.
// L.392: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_kiksnet;","ListboxTop",0,"Position",[4,448,142,20],"String","administrate KiKSnet server","Tag","kiksnet_server_btn");

// !! L.401: Matlab function uicontrol not yet converted, original calling sequence used.
// L.401: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"FontName","verdana","FontWeight","bold","ListboxTop",0,"Position",[5,528,140,13],"String","KiKSnet","Style","text","Tag","kiksnet_text");

// !! L.409: Matlab function uicontrol not yet converted, original calling sequence used.
// L.409: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"HorizontalAlignment","right","ListboxTop",0,"Position",[4,489,45,15],"String","server : ","Style","text","Tag","StaticText4");

// !! L.417: Matlab function uicontrol not yet converted, original calling sequence used.
// L.417: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"HorizontalAlignment","left","ListboxTop",0,"Position",[11,510,70,15],"String","radio turret id : ","Style","text","Tag","StaticText4");

// ! L.426: mtlb(mat6) can be replaced by mat6() or mat6 whether mat6 is an M-file or not.
// !! L.426: Matlab function uicontrol not yet converted, original calling sequence used.
// L.426: (Warning name conflict: function name changed from uicontrol to %uicontrol).
options = strcat(cell2mat(mtlb(mat6)), '|');
h1 = uicontrol("Parent",h0,"BackgroundColor",[1,1,1],"Callback","kiks_gui_getaccmethod;","ListboxTop",0,"Position",[5,242,140,20],"String",options,"Style","popupmenu","Tag","acceleration_method","Value",1);

// !! L.433: Matlab function uicontrol not yet converted, original calling sequence used.
// L.433: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"ListboxTop",0,"Position",[5,262,140,13],"String","time acceleration method","Style","text","Tag","text_time_acceleration_method");// !! L.445: Matlab function uicontrol not yet converted, original calling sequence used.

// L.445: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",[1,1,1],"Callback","kiks_gui_gettargetspeed;","Enable","off","ListboxTop",0,"Max",2000,"Min",100,"Position",[6,219,138,20],"Style","slider","Tag","speed_target","Value",100,"Visible","off");

// !! L.452: Matlab function uicontrol not yet converted, original calling sequence used.
// L.452: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_gui_monitorbtn","ListboxTop",0,"Position",[4,370,142,20],"String","monitor simulation details","Tag","monitor");

// !! L.461: Matlab function uicontrol not yet converted, original calling sequence used.
// L.461: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"FontWeight","bold","HorizontalAlignment","left","ListboxTop",0,"Position",[80,510,50,15],"String","n/a","Style","text","Tag","radioid");

// ! L.481: mtlb(mat7) can be replaced by mat7() or mat7 whether mat7 is an M-file or not.
// !! L.481: Matlab function axes not yet converted, original calling sequence used.
//options = strcat(cell2mat(mtlb(mat7)), '|');
//h1 = axes("Parent",h0,"Units","pixels","Box","on","CameraUpVector",[0,1,0],"CameraUpVectorMode","manual","Color",[1,1,1],"ColorOrder",options,"Layer","top","NextPlot","add","Position",[148,124.43820224719,450,326.12359550562],"Tag","arena_axes","Visible","off","XColor",[0,0,0],"XLim",[0,178],"XLimMode","manual","YColor",[0,0,0],"YDir","reverse","YLim",[0,129],"YLimMode","manual","ZColor",[0,0,0]);

// !! L.489: Matlab function text not yet converted, original calling sequence used.
//h2 = text("Parent",h1,"Color",[0,0,0],"HandleVisibility","off","HorizontalAlignment","center","Position",[89.198218262806,-2.7699386503068,9.1602540378444],"Tag","arena_axesText4","VerticalAlignment","cap","Visible","off");

// !! L.490: Matlab function get not yet converted, original calling sequence used.
// L.490: (Warning name conflict: function name changed from get to %get).
// !! L.490: Matlab function set not yet converted, original calling sequence used.
// L.490: (Warning name conflict: function name changed from set to %set).
//%set(%get(h2,"Parent"),"XLabel",h2);


// !! L.499: Matlab function text not yet converted, original calling sequence used.
//h2 = text("Parent",h1,"Color",[0,0,0],"HandleVisibility","off","HorizontalAlignment","center","Position",[180.77505567929,64.104294478528,9.1602540378444],"Rotation",90,"Tag","arena_axesText3","VerticalAlignment","baseline","Visible","off");

// !! L.500: Matlab function get not yet converted, original calling sequence used.
// L.500: (Warning name conflict: function name changed from get to %get).
// !! L.500: Matlab function set not yet converted, original calling sequence used.
// L.500: (Warning name conflict: function name changed from set to %set).
//%set(%get(h2,"Parent"),"YLabel",h2);// !! L.506: Matlab function text not yet converted, original calling sequence used.
//h2 = text("Parent",h1,"Color",[0,0,0],"HandleVisibility","off","Position",[236.67260579065,169.36196319018,9.1602540378444],"Tag","arena_axesText2","Visible","off");

// !! L.507: Matlab function get not yet converted, original calling sequence used.
// L.507: (Warning name conflict: function name changed from get to %get).
// !! L.507: Matlab function set not yet converted, original calling sequence used.
// L.507: (Warning name conflict: function name changed from set to %set).
//%set(%get(h2,"Parent"),"ZLabel",h2);

// ! L.515: mtlb(mat8) can be replaced by mat8() or mat8 whether mat8 is an M-file or not.
// !! L.515: Matlab function text not yet converted, original calling sequence used.
//h2 = text("Parent",h1,"Color",[0,0,0],"HandleVisibility","off","HorizontalAlignment","center","Position",mtlb(mat8),"Tag","arena_axesText1","VerticalAlignment","bottom","Visible","off");

// !! L.516: Matlab function get not yet converted, original calling sequence used.
// L.516: (Warning name conflict: function name changed from get to %get).
// !! L.516: Matlab function set not yet converted, original calling sequence used.
// L.516: (Warning name conflict: function name changed from set to %set).
//%set(%get(h2,"Parent"),"Title",h2);

// !! L.521: Matlab function uicontrol not yet converted, original calling sequence used.
// L.521: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"Units","pixels","Position",[0,0,500,23],"Style","frame","Tag","status_dummy");


// !! L.530: Matlab function uicontrol not yet converted, original calling sequence used.
// L.530: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"Units","pixels","FontName","Courier New","FontSize",8,"HorizontalAlignment","left","Position",[148,5,250,12],"Style","text","String","","Tag","status");// !! L.536: Matlab function uicontrol not yet converted, original calling sequence used.

// L.536: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"Callback","kiks_gui_loghistory","ListboxTop",0,"Position",[4,1,142,18],"String","view log history","Tag","togglelog");

h1 = uicontrol('Parent',h0,'BackgroundColor',[1,1,1],'HorizontalAlignment','left','ListboxTop',0,'Units','pixels','Position',[76,-20,70,20],'FontName','Courier New','FontSize',9,'String','','Style','edit','Tag','kiks_matlab_command','Callback',"g=findobj(''tag'',''toggle_foreground''); set(g,''enable'',''off''); h=findobj(''tag'',''kiks_matlab_command''); command=get(h,''String''); kiks_status([''>> '' command]); disp([''>> '' command]); set(h,''String'''',[''executing evalc('''''' command '''''')...'']); try, res=evalc(command); catch, res=[''??? '' lasterr]; end; set(h,''String'',''''); kiks_status(res); disp(res); g=findobj(''tag'',''toggle_foreground''''); set(g,''enable'',''on'');");

// !! L.557: Matlab function uicontrol not yet converted, original calling sequence used.
// L.557: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"Callback","kiks_foreground","ListboxTop",0,"Position",[4,-21,71,20],"String","go active","Tag","toggle_foreground");

// KiKSnet stuff

// !! L.568: Matlab function uicontrol not yet converted, original calling sequence used.
// L.568: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"ListboxTop",0,"Position",[5,242,140,17],"String","","Style","text","Tag","t_kiksnet_text_server","FontWeight","bold","Visible","off");

// !! L.577: Matlab function uicontrol not yet converted, original calling sequence used.
// L.577: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"FontSize",14,"ListboxTop",0,"Position",[4,171,140,30],"String","?","Style","text","Tag","t_kiksnet_text_ping","Visible","off");

// !! L.585: Matlab function uicontrol not yet converted, original calling sequence used.
// L.585: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_gui_placerobot","ListboxTop",0,"Position",[4,303,142,20],"String","place robot","Visible","off","Tag","t_kiksnet_place_robot");

// KiKSnet server stuff
// !! L.594: Matlab function uicontrol not yet converted, original calling sequence used.
// L.594: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",[1,1,1],"ListboxTop",0,"Position",[7,480,135,42],"Style","frame","Visible","off","Tag","t_kiksnetserver_frame1");

// !! L.604: Matlab function uicontrol not yet converted, original calling sequence used.
// L.604: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",[1,1,1],"ListboxTop",0,"Position",[10,500,35,17],"String","server:","Style","text","Tag","t_kiksnetserver_text_server_text","FontWeight","normal","HorizontalAlignment","left","Visible","off");

// !! L.614: Matlab function uicontrol not yet converted, original calling sequence used.
// L.614: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",[1,1,1],"ListboxTop",0,"Position",[45,500,90,17],"String","?","Style","text","Tag","t_kiksnetserver_text_server","HorizontalAlignment","right","FontWeight","bold","Visible","off");

// !! L.625: Matlab function uicontrol not yet converted, original calling sequence used.
// L.625: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",[1,1,1],"ListboxTop",0,"Position",[10,485,35,17],"String","clients:","Style","text","Tag","t_kiksnetserver_text_clients_text","FontWeight","normal","HorizontalAlignment","left","Visible","off");

// !! L.635: Matlab function uicontrol not yet converted, original calling sequence used.
// L.635: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",[1,1,1],"ListboxTop",0,"Position",[45,485,90,17],"String","?","Style","text","Tag","t_kiksnetserver_text_clients","HorizontalAlignment","right","FontWeight","bold","Visible","off");

options = strcat(cell2mat(makecell([1,4],"Radio ID:","License:","IP:","Score:")), '|');
for i = 0:3
  spacing = 70;
  // !! L.645: Matlab function sprintf not yet converted, original calling sequence used.
  // !! L.645: Matlab function uicontrol not yet converted, original calling sequence used.
  // L.645: (Warning name conflict: function name changed from uicontrol to %uicontrol).
  h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"ListboxTop",0,"Position",[7,323-i*spacing,135,spacing+1],"Style","frame","Visible","off","Tag",sprintf("t_kiksnetserver_clientstats_%d_frame",i+1));

  // !! L.656: Matlab function sprintf not yet converted, original calling sequence used.
  // !! L.656: Matlab function uicontrol not yet converted, original calling sequence used.
  // L.656: (Warning name conflict: function name changed from uicontrol to %uicontrol).
  h1 = uicontrol("Parent",h0,"BackgroundColor",[0.3,0.3,0.3],"ForegroundColor",[1,1,1],"ListboxTop",0,"Position",[8,379-i*spacing,133,14],"Style","text","String","","HorizontalAlignment","center","FontWeight","bold","Visible","off","Tag",sprintf("t_kiksnetserver_clientstats_%d_callsign",i+1));

  // !! L.665: Matlab function sprintf not yet converted, original calling sequence used.
  // !! L.665: Matlab function uicontrol not yet converted, original calling sequence used.
  // L.665: (Warning name conflict: function name changed from uicontrol to %uicontrol).
  h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"ListboxTop",0,"Position",[8,325-i*spacing,49,53],"Style","text","String",options,"HorizontalAlignment","right","Visible","off","Tag",sprintf("t_kiksnetserver_clientstats_%d_text",i+1));

  // !! L.675: Matlab function sprintf not yet converted, original calling sequence used.
  // !! L.675: Matlab function uicontrol not yet converted, original calling sequence used.
  // L.675: (Warning name conflict: function name changed from uicontrol to %uicontrol).
  h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"ListboxTop",0,"Position",[59,325-i*spacing,82,53],"Style","text","String","","HorizontalAlignment","left","Visible","off","FontWeight","bold","Tag",sprintf("t_kiksnetserver_clientstats_%d",i+1));
end;

// !! L.684: Matlab function uicontrol not yet converted, original calling sequence used.
// L.684: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_gui_kiksnet_scroll(-1);","ListboxTop",0,"Position",[7,411,135,18],"String","scroll up","Visible","off","Tag","t_kiksnetserver_scrollup");

// !! L.692: Matlab function uicontrol not yet converted, original calling sequence used.
// L.692: (Warning name conflict: function name changed from uicontrol to %uicontrol).
h1 = uicontrol("Parent",h0,"BackgroundColor",KIKS_GUI_COLOR,"Callback","kiks_gui_kiksnet_scroll(1);","ListboxTop",0,"Position",[7,393,135,18],"String","scroll down","Visible","off","Tag","t_kiksnetserver_scrolldown");

// !! L.694: Matlab function findobj not yet converted, original calling sequence used.
//h = findobj(h0);
h = h0;
for i = 1:max(size(mtlb_double(h)))
  // !! L.696: Matlab function get not yet converted, original calling sequence used.
  // L.696: (Warning name conflict: function name changed from get to %get).
  p = get(mtlb_e(h,i),"Position");
  p = mtlb_i(p,2,mtlb_a(mtlb_e(p,2),yadd));

  // !! L.698: Matlab function set not yet converted, original calling sequence used.
  // L.698: (Warning name conflict: function name changed from set to %set).
  set(mtlb_e(h,i),"Position",p);
end;

// !! L.700: Matlab function findobj not yet converted, original calling sequence used.
h = findobj("tag","status_dummy");

// !! L.701: Matlab function get not yet converted, original calling sequence used.
// L.701: (Warning name conflict: function name changed from get to %get).
p = get(h,"Position");
p = mtlb_i(p,2,0);
p = mtlb_i(p,4,mtlb_a(mtlb_e(p,4),yadd));

// !! L.704: Matlab function set not yet converted, original calling sequence used.
// L.704: (Warning name conflict: function name changed from set to %set).
set(h,"Position",p);

// !! L.705: Matlab function set not yet converted, original calling sequence used.
// L.705: (Warning name conflict: function name changed from set to %set).
set(h0,"Visible","on");

if %nargout>0 then fig = h0;end;
endfunction
