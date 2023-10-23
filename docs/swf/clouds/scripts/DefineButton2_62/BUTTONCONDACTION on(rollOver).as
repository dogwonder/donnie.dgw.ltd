on(rollOver){
   if(this.everybody._currentframe != 30)
   {
      this.everybody.gotoAndPlay("in");
   }
   this.menucontrol.place = true;
   this.menucontrol.draw();
   _root.active3 = "level 3 is active";
   _root.motioncontroller.clouds = false;
}
