on(rollOver){
   if(this.dies._currentframe != 30)
   {
      this.dies.gotoAndPlay("in");
   }
   this.countdown.euro = new Date(2001,9,1,23,59,59);
   this.menucontrol.place = true;
   this.countdown.gotoAndPlay(2);
}
