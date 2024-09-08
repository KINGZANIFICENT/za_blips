# za_blips

za_blips
Blips Script for QBcore on FiveM

This script adds custom blips to your FiveM server using the QBcore framework. It allows server admins to easily define and configure blips for various locations (e.g., shops, hospitals, police stations) on the map.

Features
Custom Blips: Easily add and manage custom blips on the map.
Flexible Configuration: Define blip locations, icons, colors, and names in a simple config file.
Seamless Integration: Fully compatible with the QBcore framework for easy integration into your existing server.

Requirements
QBcore

Installation
1. Download and Extract
Download the script and extract the za_blips folder into the resources directory of your FiveM server.

2. Add to Server Configuration
Open your server.cfg file located in the root directory of your server files and add the following line to ensure the resource starts:

```
ensure za_blips
```

3. Configure the Blips
To configure the blips, edit the config.lua file located in the resource's root folder. The config.lua file contains a list of blips with properties such as title, coordinates, icon, and color.

Example config.lua:

```
-- config.lua

Config = {}

-- Define your blips with vector3 for coordinates
Config.Blips = {
    {title="Shop", colour=2, id=52, coords = vector3(25.7, -1347.3, 29.49)},
    {title="Hospital", colour=1, id=61, coords = vector3(339.85, -1394.56, 32.51)},
    {title="Police Station", colour=29, id=60, coords = vector3(425.1, -979.5, 30.7)},
    {title="Mechanic", colour=5, id=402, coords = vector3(-211.55, -1324.55, 30.89)}
}
```
How to Add Blips

Each blip has the following parameters:

title: The name that will appear when hovering over the blip.
colour: The color of the blip (FiveM blip color IDs).
id: The blip icon (FiveM blip sprite IDs).
x, y, z: The coordinates for the blip.
You can find lists of available blip IDs and colors by searching for "FiveM Blip IDs" and "FiveM Blip Colors" online.
