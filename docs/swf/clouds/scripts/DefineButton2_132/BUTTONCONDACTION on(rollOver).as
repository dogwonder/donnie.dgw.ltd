on(rollOver){
   if(this.alone._currentframe != 30)
   {
      this.alone.gotoAndPlay("in");
   }
   this.menucontrol.place = true;
   this.countdown.euro = new Date(2001,9,8,23,59,59);
   this.countdown.gotoAndPlay(2);
   this.menucontrol.draw();
   this.car.gotoAndPlay(2);
}
