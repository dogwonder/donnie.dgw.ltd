onClipEvent(enterFrame){
   if(draw)
   {
      this.attachMovie("shards","s" add i,i);
      clip = this["s" add i];
      clip._y = random(200);
      clip._rotation = 180;
      clip._xscale = random(300) + 20;
      clip._yscale = random(100) + 20;
      clip.gotoAndStop(random(6) + 1);
      i++;
      if(30 < i)
      {
         draw = false;
         _root.nextFrame();
      }
   }
}
