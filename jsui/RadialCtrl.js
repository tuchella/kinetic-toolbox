/*

2d vector control

arguments: fgred fggreen fgblue bgred bggreen bbgblue radius

*/

inlets = 2;
outlets = 2;
sketch.default2d(); //like default3d but uses orthographic projection
var vbrgb = [1.,1.,1.,0.];
var vfrgb = [0.2,0.2,0.2,1.];
var w = [0,0,0];
var vx = 0;
var vy = 0;
var pR = 0;
var pT = 0;
var vradius = 0.05;

// process arguments
if (jsarguments.length>1)
    vfrgb[0] = jsarguments[1]/255.;
if (jsarguments.length>2)
    vfrgb[1] = jsarguments[2]/255.;
if (jsarguments.length>3)
    vfrgb[2] = jsarguments[3]/255.;
if (jsarguments.length>4)
    vbrgb[0] = jsarguments[4]/255.;
if (jsarguments.length>5)
    vbrgb[1] = jsarguments[5]/255.;
if (jsarguments.length>6)
    vbrgb[2] = jsarguments[6]/255.;
if (jsarguments.length>7)
    vradius = jsarguments[1];



draw();

function draw()
{
    var str;
    var w_ar = [0,0,0];
    w_ar[0] = w[0]*0.95;
    w_ar[1] = w[1]*0.95;
    w_ar[2] = w[2]*0.95;
    with (sketch) {
        glclearcolor(0.67, 0.70, 0.72, 1.);            
        glclear();
        gllinewidth(2);
        glcolor(0.9,0.9,0.9,1.);
        moveto(0.,0.,0.);
        framecircle (0.95);
        glcolor(0.5, 0.5, 0.5);
        lineto (w_ar);
        glcolor (0.2, 0.2, 0.2);
    //    moveto(w);
        circle(0.05);


    }
}

function msg_float(v)
{
    var i = inlet;
    
    if (i==0)
        setPolarCoordinates(v,360. * pT/(Math.PI * 2.));
    else
        setPolarCoordinates(pR*2.,v);
    bang();
}

function set(v)
{
    var i = inlet;
    
    if (i==0)
        setPolarCoordinates(v,360. * pT/(Math.PI * 2.));
    else
        setPolarCoordinates(pR*2.,v);
    draw();
    refresh();
}

function list()
{   
    if (arguments.length>1)
        setPolarCoordinates(arguments[0], arguments[1]);
    bang();
}


function bang()
{
    draw();
    refresh();
    var theta = pT*360/(Math.PI*2.);
    var R = 2*pR;
    outlet(1,theta);
    outlet(0,R);
}

function fsaa(v)
{
    sketch.fsaa = v;
    bang();
}

function frgb(r,g,b)
{
    vfrgb[0] = r/255.;
    vfrgb[1] = g/255.;
    vfrgb[2] = b/255.;
    draw();
    refresh();
}

function brgb(r,g,b)
{
    vbrgb[0] = r/255.;
    vbrgb[1] = g/255.;
    vbrgb[2] = b/255.;
    draw();
    refresh();
}

function radius(v)
{
    vradius = v;
    draw();
    refresh();
}

function setvalueof(x,y)
{
    list(x,y);
}

function getvalueof()
{
    var a = new Array(vx,vy);
    
    return a;
}

function onresize(w,h)
{
    draw();
    refresh();
}
onresize.local = 1; //private

function onclick(x,y)
{
//    var width = box.rect[2] - box.rect[0];
//    var height = box.rect[3] - box.rect[1]
//    var relX = x/width;
//    var relY = 1- y/height;
//    var cX = relX-0.5;
//    var cY = relY-0.5;
//    var Radious = Math.sqrt(cX*cX + cY*cY);
//    if (Radious<=.5)
//        {
            ondrag(x,y);
//        }
}
onclick.local = 1; //private

function ondrag(x,y)
{

    var width = box.rect[2] - box.rect[0];
    var height = box.rect[3] - box.rect[1];
//    if (x<0) x = 0;
//    else if (x>width) x = width;
//    if (y<0) y = 0;
//    else if (y>height) y = height;
    vx = x/width;
    vy = 1- y/height;
    var cX = vx-0.5;
    var cY = vy-0.5;
    var Radious = Math.sqrt(cX*cX + cY*cY);
    if (Radious>0.55) return;
    refreshPolar();
    if (pR>0.5)
    {
        pR = 0.5;
        vx = 0.5 + pR*Math.cos(pT);
        vy = 0.5 + pR*Math.sin(pT);
        x = width*vx;
        y = (1-vy)*height;
    }
    w = sketch.screentoworld(x,y);
    notifyclients();
    bang();
}
ondrag.local = 1; //private

function refreshPolar()
{
    var cX = vx-0.5;
    var cY = vy-0.5;
    pR = Math.sqrt(cX*cX + cY*cY);
    pT = Math.atan2(cY, cX);
    if (pT<0.)
        pT = pT + 2*Math.PI;
    
}

refreshPolar.local = 1;//private

function setPolarCoordinates (r, a)
{
    var width = box.rect[2] - box.rect[0];
    var height = box.rect[3] - box.rect[1];
    var tR = pR;
    var tT = 360. * pT/(Math.PI * 2.);
    tR = r*0.5;
    tT = a;
    if (tR<0.)
        tR = 0.;
    else if (tR>0.5)
        tR = 0.5; 
    pT = (tT % 360)*Math.PI*2./360.;
    pR = tR;
    vx = 0.5 + pR*Math.cos(pT);
    vy = 0.5 + pR*Math.sin(pT);
    if (vx<0) vx = 0;
    else if (vx>1) vx = 1;
    if (vy<0) vy = 0;
    else if (vy>1) vy = 1;
    
    w = sketch.screentoworld(vx*width,(1.-vy)*height);
    notifyclients();
}
setPolarCoordinates.local = 1;