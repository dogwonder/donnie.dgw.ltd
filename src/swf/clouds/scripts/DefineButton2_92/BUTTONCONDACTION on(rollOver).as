on(rollOver){
   if(this.dies._currentframe != 30)
   {
      this.dies.gotoAndPlay("in");
   }
   this.menucontrol.place = true;
   _root.motioncontroller.clouds = false;
   _root.active1 = "level 1 is active";
}
