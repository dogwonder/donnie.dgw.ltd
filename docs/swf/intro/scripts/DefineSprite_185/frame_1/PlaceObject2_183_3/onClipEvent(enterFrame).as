onClipEvent(enterFrame){
   if(_root.draw)
   {
      x = x + random(30) - 18;
      y = y + random(30) - 17;
      if(x < -600)
      {
         x = -600 + random(200);
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
}
