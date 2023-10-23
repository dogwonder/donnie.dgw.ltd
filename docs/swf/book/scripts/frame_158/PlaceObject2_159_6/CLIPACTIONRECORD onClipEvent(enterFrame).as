onClipEvent(enterFrame){
   if(fade)
   {
      _root.global.setVolume(a);
      a--;
      if(a < 2)
      {
         fade = false;
      }
   }
}
