
This folder contains the `.stl` files for all parts. The robot was desiged using [FreeCad](https://www.freecadweb.org/); the corresponding design files (different versions) are in the  `FreeCAD_files` subfolder. 

The subfolder `deprecated` contains older parts.

The subfolder `mods_c_otto` contains parts contributed by **Carsten Otto**.

### Notes:
- `bar.stl`, `bar_long.stl`, `bar_medium.stl`<br>
  Only one of these is needed. They have different lengths, defining if the legs are parallel to each other (`bar`) or if the front and rear legs are angled slightly forwards and backwards, respectively (`bar_long`, `bar_medium`)
- `rear_bottom.stl` (in deprecated), `rear_bottom_lipo1000.stl`<br> 
  Only one of these is needed, depending on the battery holder. `rear_bottom` holds a 2x AAA battery cartridge (not recommended, because the batteries wear out quite quickly), `rear_bottom_lipo1000` a approx. 1Ah LiPo (e.g. like [this](https://eckstein-shop.de/LiPo-Akku-Lithium-Ion-Polymer-Batterie-37V-1200mAh-JST-PH-Connector)).
- `sensor_adapter_evo_mini_terabee.stl`<br> 
  This part is needed to attached an [Evo Mini](https://www.terabee.com/shop/lidar-tof-range-finders/teraranger-evo-mini/) ranging sensor from Terabee.
- `sensor_adapter_tof_pololu.stl`<br>
  This part is needed to attach Pololu's time-of-flight distance sensors (for details, see [here](https://github.com/teuler/robotling2/wiki/Sensoren#time-of-flight-sensoren)).
- `board_carrier_v2.stl`<br>
  Allows for easier connecting the USB cable to the Pico.
- `screen_holder.stl`, `sensor_bank_scd41.stl`, `servo_holder.stl`<br> 
  Parts needed for the CO2 guard version of the robot. `servo_holder.stl` is mounted at the front of the PCB frame to hold a micro servo, which raises a display. `screen_holder.stl` holds this display and is mounted on the servo arm. Finally, `sensor_bank_scd41.stl` sits at the back of the PCB frame and allows to mount the SCD41 breakout containing the CO2 / temperature / humidity sensor.
