on(rollOver){
   if(this.alone._currentframe != 30)
   {
      this.alone.gotoAndPlay("in");
   }
   this.menucontrol.place = true;
   this.menucontrol.draw();
   _root.active2 = "level 2 is active";
   _root.motioncontroller.clouds = false;
}
