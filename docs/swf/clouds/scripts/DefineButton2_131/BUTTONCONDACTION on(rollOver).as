on(rollOver){
   if(this.everybody._currentframe != 30)
   {
      this.everybody.gotoAndPlay("in");
   }
   this.countdown.euro = new Date(2001,9,15,23,59,59);
   this.menucontrol.place = true;
   this.countdown.gotoAndPlay(2);
   this.crane.gotoAndPlay(2);
}
