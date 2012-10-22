## Description
A hubot script for retrieving info about food trucks currently in DC, MD and VA.

## Installation
Drop this in your generated hubot `src/scripts` directory and use npm to install `zombie` and `moment`.

## Examples

You can use either `dcfoodtruck me` or the shortened `dcft me`

All trucks across the Washington, D.C. metropolitan area
    
    hubot dcft me

Limit to just those trucks in Washington, D.C. (`md` and `va` also work)

    hubot dcft me dc

Find trucks parked near Farragut Square in Washington, D.C.

    hubot dcft me farragut square

Find trucks serving up tacos

    hubot dcft me tacos
