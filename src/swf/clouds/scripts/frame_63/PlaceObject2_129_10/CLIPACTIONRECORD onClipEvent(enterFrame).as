onClipEvent(enterFrame){
   if(playing)
   {
      now = new Date();
      days = (euro - now) / 1000 / 60 / 60 / 24;
      daysRound = Math.floor(days);
      hours = (euro - now) / 1000 / 60 / 60 - 24 * daysRound;
      hoursRound = Math.floor(hours);
      minutes = (euro - now) / 1000 / 60 - 1440 * daysRound - 60 * hoursRound;
      minutesRound = Math.floor(minutes);
      seconds = (euro - now) / 1000 - 86400 * daysRound - 3600 * hoursRound - 60 * minutesRound;
      secondsRound = Math.round(seconds);
      if(secondsRound < 10)
      {
         secondsRound = "0" + secondsRound;
      }
      if(minutesRound < 10)
      {
         minutesRound = "0" + minutesRound;
      }
      if(hoursRound < 10)
      {
         hoursRound = "0" + hoursRound;
      }
      if(daysRound < 10)
      {
         daysRound = "0" + daysRound;
      }
      div = ":";
      time.timeRemaining = daysRound + div + hoursRound + div + minutesRound + div + secondsRound;
   }
}
