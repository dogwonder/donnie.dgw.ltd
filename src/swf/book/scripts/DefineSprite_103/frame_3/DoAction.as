vy = (Number(vy) + Number((ty - y_value) * 1 / acc)) / b;
y_value = Number(y_value) + Number(vy);
this._y = y_value;
vx = (Number(vx) + Number((tx - x_value) * 1 / acc)) / b;
x_value = Number(x_value) + Number(vx);
this._x = x_value;
if(-0.01 < vy and vy < 0.01 and (-0.01 < vx and vx < 0.01))
{
   gotoAndStop(2);
}
