va = (Number(va) + Number((ta - a_value) * 1 / acc)) / b;
a_value = Number(a_value) + Number(va);
this._alpha = a_value;
if(-0.01 < va and va < 0.01)
{
   gotoAndStop(2);
}
