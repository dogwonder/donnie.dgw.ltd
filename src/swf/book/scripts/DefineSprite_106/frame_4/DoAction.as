a = 1;
while(a < mylength + 1)
{
   newClip = this["letter" + a];
   removeMovieClip(newClip);
   a++;
}
gotoAndStop(1);
