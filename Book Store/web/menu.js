//----------DHTML Menu Created using AllWebMenus PRO ver 5.3-#842---------------
//C:\Documents and Settings\lucky\My Documents\#04 - XP Tabs2.awm
var awmMenuName='menu';
var awmLibraryBuild=842;
var awmLibraryPath='/awmdata';
var awmImagesPath='/xptabs-assets';
var awmSupported=(navigator.appName + navigator.appVersion.substring(0,1)=="Netscape5" || document.all || document.layers || navigator.userAgent.indexOf('Opera')>-1 || navigator.userAgent.indexOf('Konqueror')>-1)?1:0;
if (awmAltUrl!='' && !awmSupported) window.location.replace(awmAltUrl);
if (awmSupported){
var nua=navigator.userAgent,scriptNo=(nua.indexOf('Chrome')>-1)?2:((nua.indexOf('Safari')>-1)?7:(nua.indexOf('Gecko')>-1)?2:((nua.indexOf('Opera')>-1)?4:1));
var mpi=document.location,xt="";
var mpa=mpi.protocol+"//"+mpi.host;
var mpi=mpi.protocol+"//"+mpi.host+mpi.pathname;
if(scriptNo==1){oBC=document.all.tags("BASE");if(oBC && oBC.length) if(oBC[0].href) mpi=oBC[0].href;}
while (mpi.search(/\\/)>-1) mpi=mpi.replace("\\","/");
mpi=mpi.substring(0,mpi.lastIndexOf("/")+1);
var e=document.getElementsByTagName("SCRIPT");
for (var i=0;i<e.length;i++){if (e[i].src){if (e[i].src.indexOf(awmMenuName+".js")!=-1){xt=e[i].src.split("/");if (xt[xt.length-1]==awmMenuName+".js"){xt=e[i].src.substring(0,e[i].src.length-awmMenuName.length-3);if (e[i].src.indexOf("://")!=-1){mpi=xt;}else{if(xt.substring(0,1)=="/")mpi=mpa+xt; else mpi+=xt;}}}}}
while (mpi.search(/\/\.\//)>-1) {mpi=mpi.replace("/./","/");}
var awmMenuPath=mpi.substring(0,mpi.length-1);
while (awmMenuPath.search("'")>-1) {awmMenuPath=awmMenuPath.replace("'","%27");}
document.write("<SCRIPT SRC='"+awmMenuPath+awmLibraryPath+"/awmlib"+scriptNo+".js'><\/SCRIPT>");
var n=null;
awmzindex=1000;
}

var awmImageName='';
var awmPosID='';
var awmSubmenusFrame='';
var awmSubmenusFrameOffset;
var awmOptimize=0;
var awmHash='MRUSYGHRSXJGSSDESQBCSOXU';
var awmNoMenuPrint=1;
var awmUseTrs=0;
var awmSepr=["0","","",""];
var awmMarg=[0,0,0,0];
function awmBuildMenu(){
if (awmSupported){
awmImagesColl=["main-button-tile.gif",17,28,"main-buttonOver-tile.gif",17,28,"main-button-left.gif",37,28,"main-buttonOver-left.gif",37,28,"main-button-right.gif",31,28,"main-buttonOver-right.gif",31,28];
awmCreateCSS(0,1,0,n,n,n,n,n,'none','0','#000000',0,0);
awmCreateCSS(1,2,1,'#FFFFFF',n,0,'bold 10px Verdana',n,'none','0','#000000','0px 10px 0px 10',1);
awmCreateCSS(0,2,1,'#154C00',n,1,'bold 10px Verdana',n,'none','0','#000000','0px 10px 0px 10',1);
var s0=awmCreateMenu(0,0,0,0,1,0,0,0,3,10,10,0,1,0,1,1,1,n,n,100,0,0,10,10,0,-1,1,200,200,0,0,0,"0,0,0",n,n,n,n,n,n,n,n,0,0,0,0,1,0,0,0,1);
it=s0.addItemWithImages(1,2,2,"Insert",n,n,"",n,n,n,3,3,3,n,n,n,"",n,n,n,"Pinsert.jsp","top",0,0,2,2,3,3,4,5,5,1,1,1,0,0,n,n,n,0,0,0,0,n);
it=s0.addItemWithImages(1,2,2,"Update",n,n,"",n,n,n,3,3,3,n,n,n,"",n,n,n,"Pser.jsp","top",0,0,2,2,3,3,4,5,5,1,1,1,0,0,n,n,n,0,0,0,7,n);
it=s0.addItemWithImages(1,2,2,"Delete",n,n,"",n,n,n,3,3,3,n,n,n,"",n,n,n,"Pdel.jsp","top",0,0,2,2,3,3,4,5,5,1,1,1,0,0,n,n,n,0,0,0,8,n);
it=s0.addItemWithImages(1,2,2,"LogOut",n,n,"",n,n,n,3,3,3,n,n,n,"index.jsp",n,n,n,"index.jsp","top",0,0,2,2,3,3,4,5,5,1,1,1,0,0,n,n,n,0,0,0,10,n);
s0.pm.buildMenu();
}}
