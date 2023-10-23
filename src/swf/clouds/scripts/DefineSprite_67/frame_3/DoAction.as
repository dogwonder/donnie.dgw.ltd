vx = (Number(vx) + Number((tx - x_value) * 1 / acc)) / b;
x_value = Number(x_value) + Number(vx);
_parent.clouds.gotoAndStop(int(x_value));
