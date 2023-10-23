on(release){
   _root["text" add id].gotoAndPlay("disperse");
   if(url)
   {
      getURL("news/pop" add id add ".html","top");
   }
   _root.gotoAndPlay("level" add id);
   this.gotoAndStop(5);
}
