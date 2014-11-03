//----------DHTML Menu Created using AllWebMenus PRO ver 5.3-#842---------------
//C:\Documents and Settings\lucky\My Documents\#04 - XP Tabs.awm
var awmMenuName='xptabs';
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
var awmHash='QPDUDWYLYDSUHIUWLKWYPMWD';
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
awmCreateCSS(1,2,1,'#FFFFFF',n,n,'14px sans-serif',n,'none','0','#000000','0px 0px 0px 0',0);
awmCreateCSS(0,2,1,'#FFFFFF',n,n,'14px sans-serif',n,'none','0','#000000','0px 0px 0px 0',0);
awmCreateCSS(1,2,1,'#000000',n,n,'14px sans-serif',n,'none','0','#000000','0px 0px 0px 0',0);
awmCreateCSS(1,2,0,'#154C00',n,1,'bold 10px Verdana',n,'none','0','#000000','0px 20px 0px 20',1);
awmCreateCSS(0,2,0,'#000000',n,1,'bold 10px Verdana',n,'none','0','#000000','0px 20px 0px 20',1);
awmCreateCSS(0,2,0,'#000000',n,1,'bold 10px Verdana',n,'none','0','#000000','2px 20px 0px 22',1);
var s0=awmCreateMenu(0,0,0,0,1,0,0,0,5,30,65,1,1,0,1,1,1,n,n,100,0,0,30,65,0,-1,1,200,200,0,0,1,"0,0,0",n,n,n,n,n,n,n,n,0,0,0,0,1,0,0,0,1);
it=s0.addItemWithImages(1,2,2,"Home",n,n,"",n,n,n,3,3,3,n,n,n,"",n,n,n,"index.jsp","top",0,0,2,2,3,3,4,5,5,1,1,1,0,0,n,n,n,0,0,0,0,n);
it=s0.addItemWithImages(1,2,2,"Products",n,n,"",n,n,n,3,3,3,n,n,n,"",n,n,n,n,n,0,0,2,2,3,3,4,5,5,1,1,1,0,0,n,n,n,0,0,0,1,n);
var s1=it.addSubmenu(1,0,1,0,0,0,0,0,0,0,1,n,n,100,0,1,0,-1,1,200,200,0,0,"0,0,0",0,"0",1);
it=s1.addItemWithImages(3,4,4,"","","","",3,3,3,3,3,3,n,n,n,"",n,n,n,n,n,0,0,0,n,n,n,n,n,n,0,0,0,0,0,n,n,n,0,0,0,n,n);
it=s1.addItem(6,7,8,"Books",n,n,"","",n,n,n,n,n,0,0,2,0,0,9,n);
var s2=it.addSubmenu(1,0,1,0,0,0,0,0,0,0,1,n,n,100,0,2,0,-1,1,200,200,0,0,"0,0,0",0,"0",1);
it=s2.addItemWithImages(3,4,4,"","","","",3,3,3,3,3,3,n,n,n,"",n,n,n,n,n,0,0,0,n,n,n,n,n,n,0,0,0,0,0,n,n,n,0,0,0,n,n);
it=s2.addItem(6,7,8,"APress",n,n,"","Apress.jsp",n,n,n,"Apress.jsp","top",0,0,2,0,0,15,n);
it=s2.addItem(6,7,8,"O&#39;Reailly",n,n,"","OReailly.jsp",n,n,n,"OReailly.jsp","top",0,0,2,0,0,18,n);
it=s2.addItem(6,7,8,"Wrox",n,n,"","Wrox.jsp",n,n,n,"Wrox.jsp","top",0,0,2,0,0,16,n);
it=s2.addItem(6,7,8,"Microsoft",n,n,"","Microsoft.jsp",n,n,n,"Microsoft.jsp","top",0,0,2,0,0,17,n);
it=s2.addItemWithImages(5,4,4,"","","","",5,5,5,3,3,3,n,n,n,"",n,n,n,n,n,0,0,0,n,n,n,n,n,n,0,0,0,0,0,n,n,n,0,0,0,n,n);
it=s1.addItem(6,7,8,"Novals",n,n,"","",n,n,n,n,n,0,0,2,0,0,11,n);
var s2=it.addSubmenu(1,0,1,0,0,0,0,0,0,0,1,n,n,100,0,3,0,-1,1,200,200,0,0,"0,0,0",0,"0",1);
it=s2.addItemWithImages(3,4,4,"","","","",3,3,3,3,3,3,n,n,n,"",n,n,n,n,n,0,0,0,n,n,n,n,n,n,0,0,0,0,0,n,n,n,0,0,0,n,n);
it=s2.addItem(6,7,8,"Chetan Bhagat",n,n,"","Chetan.jsp",n,n,n,"Chetan.jsp","top",0,0,2,0,0,19,n);
it=s2.addItem(6,7,8,"Salman Rushdie",n,n,"","Salman.jsp",n,n,n,"Salman.jsp","top",0,0,2,0,0,20,n);
it=s2.addItemWithImages(5,4,4,"","","","",5,5,5,3,3,3,n,n,n,"",n,n,n,n,n,0,0,0,n,n,n,n,n,n,0,0,0,0,0,n,n,n,0,0,0,n,n);
it=s1.addItem(6,7,8,"Magazines",n,n,"","Magazine.jsp",n,n,n,"Magazine.jsp","top",0,0,2,0,0,12,n);
it=s1.addItem(6,7,8,"CDs &amp; DVDs",n,n,"","CDdvd.jsp",n,n,n,"CDdvd.jsp","top",0,0,2,0,0,13,n);
it=s1.addItem(6,7,8,"Utilities",n,n,"","Utilities.jsp",n,n,n,"Utilities.jsp","top",0,0,2,0,0,14,n);
it=s1.addItemWithImages(5,4,4,"","","","",5,5,5,3,3,3,n,n,n,"",n,n,n,n,n,0,0,0,n,n,n,n,n,n,0,0,0,0,0,n,n,n,0,0,0,n,n);
it=s0.addItemWithImages(1,2,2,"Buy a Product",n,n,"",n,n,n,3,3,3,n,n,n,"",n,n,n,"BuyaPro.jsp","top",0,0,2,2,3,3,4,5,5,1,1,1,0,0,n,n,n,0,0,0,2,n);
it=s0.addItemWithImages(1,2,2,"Order Tracking",n,n,"",n,n,n,3,3,3,n,n,n,"",n,n,n,n,n,0,0,2,2,3,3,4,5,5,1,1,1,0,0,n,n,n,0,0,0,3,n);
var s1=it.addSubmenu(1,0,1,0,0,0,0,0,0,0,1,n,n,100,0,4,0,-1,1,200,200,0,0,"0,0,0",0,"0",1);
it=s1.addItemWithImages(3,4,4,"","","","",3,3,3,3,3,3,n,n,n,"",n,n,n,n,n,0,0,0,n,n,n,n,n,n,0,0,0,0,0,n,n,n,0,0,0,n,n);
it=s1.addItem(6,7,8,"UpDate Order",n,n,"","Updateord.jsp",n,n,n,"Updateord.jsp","top",0,0,2,0,0,21,n);
it=s1.addItem(6,7,8,"Cancel Order",n,n,"","Cancelord.jsp",n,n,n,"Cancelord.jsp","top",0,0,2,0,0,22,n);
it=s1.addItemWithImages(5,4,4,"","","","",5,5,5,3,3,3,n,n,n,"",n,n,n,n,n,0,0,0,n,n,n,n,n,n,0,0,0,0,0,n,n,n,0,0,0,n,n);
it=s0.addItemWithImages(1,2,2,"FAQ&#39;S","FAQ&#39;s","FAQ&#39;s","",n,n,n,3,3,3,n,n,n,"Faq.jsp",n,n,n,"Faq.jsp","top",0,0,2,2,3,3,4,5,5,1,1,1,0,0,n,n,n,0,0,0,4,n);
it=s0.addItemWithImages(1,2,2,"Feedback &amp; Query",n,n,"",n,n,n,3,3,3,n,n,n,"",n,n,n,"Feedback.jsp","top",0,0,2,2,3,3,4,5,5,1,1,1,0,0,n,n,n,0,0,0,7,n);
it=s0.addItemWithImages(1,2,2,"Contact",n,n,"",n,n,n,3,3,3,n,n,n,"",n,n,n,"Contact.jsp","top",0,0,2,2,3,3,4,5,5,1,1,1,0,0,n,n,n,0,0,0,8,n);
it=s0.addItemWithImages(1,2,2,"About Us",n,n,"",n,n,n,3,3,3,n,n,n,"About.jsp",n,n,n,"About.jsp","top",0,0,2,2,3,3,4,5,5,1,1,1,0,0,n,n,n,0,0,0,10,n);
s0.pm.buildMenu();
}}
