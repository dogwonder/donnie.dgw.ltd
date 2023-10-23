newClip = this["letter" + a];
newClip.x_target = 850;
newClip.y_target = random(200) + 300;
newClip.gotoAndPlay(2);
a++;
if(mylength < a)
{
   gotoAndStop(1);
}
