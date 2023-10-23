mylength = length(text);
if(mylength >= a)
{
   attachMovie("letter","letter" + a,a);
   newClip = this["letter" + a];
   newClip.text = text.substr(a,1);
   newClip._x = 670;
   newClip._y = 260;
   newClip.x_target = px_target + (newClip._width - 7) * a;
   newClip.y_target = py_target;
   myColor = new Color(newClip);
   myColorTransform = new Object();
   myColorTransform.ra = r;
   myColorTransform.ga = g;
   myColorTransform.ba = b;
   myColor.setTransform(myColorTransform);
   a++;
}
if(mylength < a)
{
   gotoAndStop(1);
}
