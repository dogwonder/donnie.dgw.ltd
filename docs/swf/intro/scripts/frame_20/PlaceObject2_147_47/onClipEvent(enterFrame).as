onClipEvent(enterFrame){
   now = new Date();
   euro = new Date(2001,9,26,23,59,59);
   days = (now - euro) / 1000 / 60 / 60 / 24;
   daysRound = Math.floor(days);
   hours = (now - euro) / 1000 / 60 / 60 - 24 * daysRound;
   hoursRound = Math.floor(hours);
   minutes = (now - euro) / 1000 / 60 - 1440 * daysRound - 60 * hoursRound;
   minutesRound = Math.floor(minutes);
   seconds = (now - euro) / 1000 - 86400 * daysRound - 3600 * hoursRound - 60 * minutesRound;
   secondsRound = Math.round(seconds);
   if(daysRound == 1)
   {
      d = " day, ";
   }
   else
   {
      d = " days, ";
   }
   if(hoursRound == 1)
   {
      h = " hour, ";
   }
   else
   {
      h = " hours, ";
   }
   if(minutesRound == 1)
   {
      m = " minute and ";
   }
   else
   {
      m = " minutes and ";
   }
   if(secondsRound == 1)
   {
      s = " second ";
   }
   else
   {
      s = " seconds ";
   }
   time.text = "The Tangent Universe collapsed " add daysRound add d add hoursRound add h add minutesRound add m add secondsRound add s add "ago.";
}
