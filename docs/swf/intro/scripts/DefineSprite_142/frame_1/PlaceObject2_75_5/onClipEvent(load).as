onClipEvent(load){
   i = 0;
   while(200 >= i)
   {
      this.attachMovie("line","line" add i,i);
      this["line" add i]._y = i;
      i = i + 2;
   }
}
