onClipEvent(enterFrame){
   x = x + random(141) - 70;
   y = y + random(141) - 70;
   if(x < -370)
   {
      x = -370 + random(100);
   }
   if(y < -220)
   {
      y = -220 + random(100);
   }
   this.attachMovie("line","line" add i,i);
   clip = this["line" add i];
   clip._x = old_x;
   clip._y = old_y;
   clip._xscale = x - old_x;
   clip._yscale = (y - old_y) * -1;
   old_x = x;
   old_y = y;
   i++;
}
