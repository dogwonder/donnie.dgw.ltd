onClipEvent(enterFrame){
   total = Math.floor(_root.getBytesTotal() / 1024);
   loaded = Math.floor(_root.getBytesLoaded() / 1024);
   percent = Math.floor(loaded * (100 / total));
   _parent.bar._xscale = percent;
   this._x = _parent.bar._x - (_parent.bar._width + 2);
   this._y = _parent.bar._y;
}
