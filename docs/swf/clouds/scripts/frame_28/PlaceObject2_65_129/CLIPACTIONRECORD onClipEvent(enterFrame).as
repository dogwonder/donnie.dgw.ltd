onClipEvent(enterFrame){
   if(place)
   {
      this.attachMovie("point","point" add i,i);
      clip = this["point" add i];
      b += random(50) + 40;
      clip._x = b;
      clip._y = random(250) + 200;
      i++;
      if(10 < i)
      {
         place = false;
         b = 10;
         i = 1;
      }
   }
}
