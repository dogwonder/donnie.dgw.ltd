vy = (Number(vy) + Number((y_target - y_value) * 1 / acc)) / b;
y_value = Number(y_value) + Number(vy);
vx = (Number(vx) + Number((x_target - x_value) * 1 / acc)) / b;
x_value = Number(x_value) + Number(vx);
_X = x_value;
_Y = y_value;
if(-0.01 < vy and vy < 0.01 and -0.01 < vx and vx < 0.01)
{
   gotoAndStop(1);
}
