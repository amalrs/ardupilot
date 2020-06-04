[33mcommit 4e216f976f000b8e2c445edd8bab7b9af22808e0[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;31morigin/master[m[33m, [m[1;31morigin/HEAD[m[33m)[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Tue Jun 2 12:59:24 2020 +1000

    autotest: assert that Plane doesn't support fence-via-mission-item-protocol
    
    Hopefully this starts to fail at some stage!

[33mcommit b07fb05dde376ebb091ca316bb7e7efbb4241112[m
Author: Christian Clauss <cclauss@me.com>
Date:   Mon May 25 13:59:57 2020 +0200

    autotest: Use ==/!= to compare constant literals (str, bytes, int, float, tuple)
    
    Avoid SyntaxWarnings on Python >= 3.8
    
    % `python3.8`
    ```
    >>> "second" is "second"
    <stdin>:1: SyntaxWarning: "is" with a literal. Did you mean "=="?
    ```
    `flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics`
    ```
    ./Tools/autotest/arducopter.py:3899:20: F632 use ==/!= to compare constant literals (str, bytes, int, float, tuple)
                    if loop is not "second":
                       ^
    ./Tools/autotest/arducopter.py:4047:20: F632 use ==/!= to compare constant literals (str, bytes, int, float, tuple)
                    if loop is not "second":
                       ^
    2     F632 use ==/!= to compare constant literals (str, bytes, int, float, tuple)
    2
    ```

[33mcommit a13ddc1096bdc2410bc4095522810a857bf3ccec[m
Author: TunaLobster <unknown>
Date:   Sun May 17 23:23:18 2020 -0500

    AP_Scripting: add binding for get_output_pwm

[33mcommit 78858bbcddf36a572c3433a1cfec72066262ffe8[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Fri May 22 12:13:08 2020 +1000

    AP_GPS: switch ublox over to 230400 baud
    
    this ensures we have sufficient bandwidth for raw data

[33mcommit 568e13fbb99ed5f2356c7618a5db19f9508d8a3e[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Wed Mar 4 14:59:05 2020 +1100

    Plane: allow for continue after land for quadplanes
    
    this allows for a new takeoff after a quadplane auto landing

[33mcommit d9d53d380d5ab355468730c3f01ed508abc290d7[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Wed Mar 4 14:43:37 2020 +1100

    AP_Landing: implement continue after land for fixed wing landings
    
    this makes touch and go missions possible

[33mcommit e673bd8909549420ba8c94be633b7183aae48e9a[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Wed Mar 4 14:29:14 2020 +1100

    Copter: implement disarm on land based on MIS_OPTIONS
    
    only continue with mission if MIS_OPTIONS bit is set

[33mcommit 7c49723f194d6194012542354c6e7c2c07021e66[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Wed Mar 4 14:28:41 2020 +1100

    AP_Mission: added continue after land mission option
    
    this allows for option to continue a mission after a landing is
    complete. The default in copter was to continue, so adding this
    option makes copter not continue by default. Plane already disarmed on
    land complete.

[33mcommit f9b02a6814c7f84fbb38f734c62097555cef1858[m
Author: Henry Wurzburg <hwurzburg@yahoo.com>
Date:   Fri May 29 17:52:38 2020 -0500

    AP_RangeFinder: HC-SR04: Add glitch filter

[33mcommit fc1ea612b18448bcd0be549179c3a1298a0f5085[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Sun May 17 16:41:50 2020 +1000

    AP_RangeFinder: add support for HC-SR04 rangefinder

[33mcommit 400220e2107a1f9d2a9e036e93639c365a9085d9[m
Author: Michael du Breuil <wicked.shell.scripts@gmail.com>
Date:   Tue May 19 12:09:24 2020 -0700

    AP_BattMonitor: Rearrange arming check order

[33mcommit 2dcf8a3b08b4cb16938235f37287475ac80ac450[m
Author: Andrew Tridgell <andrew@tridgell.net>
Date:   Thu Apr 30 18:32:20 2020 +1000

    AP_RangeFinder: cope with beyond max range with LightwareI2C

[33mcommit 22d052b71123097d11202cf2fc626ac25c072400[m
Author: mmk0102 <mmk0102@gmail.com>
Date:   Wed May 27 22:04:00 2020 +0300

    AP_Arming: check for duplicate auxswitch options

[33mcommit c0d7739929e85e0dad4d45b8581460c40faa8b69[m
Author: mmk0102 <mmk0102@gmail.com>
Date:   Wed May 27 21:58:59 2020 +0300

    Copter: move check for duplicate auxswitch options up

[33mcommit 911570e9f3992fe974c48243855d00938c8ec908[m
Author: Michael du Breuil <wicked.shell.scripts@gmail.com>
Date:   Sun May 31 18:25:08 2020 -0700

    Plane: Protect against a divide by 0 when calculating the forward throttle compensation

[33mcommit ffaa60b9edb9f3889d6c4f77e9a12d8eb90cb009[m
Author: Peter Barker <pbarker@barker.dropbear.id.au>
Date:   Mon Jun 1 17:31:16 2020 +1000

    autotest: stop emitting duplicate rangefinder headings
    
    This was only an issue for the Wasp rangefinder block, which drops stuff
    in at the top level by specifying the same subgroup name as the top
    level.

[33mcommit 93d8458d2ae64b0a7d850e0a2126476748b14cad[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Mon Jun 1 19:12:20 2020 +0900

    AP_NavEKF3: FuseVelPosNED uses ext nav vel err in obs data check

[33mcommit d37eec5fd8f75aec038fc6e3650c0195c37e615f[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Mon Jun 1 17:59:37 2020 +0900

    AP_NavEKF3: ext nav vel corrected for sensor position when recalled from buffer

[33mcommit 79901ffc1b521427fb1f4fa7dc0497aed122d4dc[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Fri May 29 10:29:32 2020 +0900

    AP_VisualOdom: pass velocity error to logger

[33mcommit 08f6b2128e343f29604ac079af00aba092513b2b[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Fri May 29 10:28:04 2020 +0900

    AP_Logger: add VISV field descriptions

[33mcommit 714975662d845018a6e9e7846df99e62ec8b0dd9[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Fri May 29 10:24:26 2020 +0900

    AP_Logger: VISP message gets velocity error field

[33mcommit 31763424a395a59a776588139d1cf52c9318d55b[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Tue May 26 20:52:51 2020 +0900

    SITL: speed up vicon messages to avoid EKF timeouts during resets

[33mcommit 630bc01101db2b9cb6ed986a39b674c6bb2b1c42[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Fri May 15 11:14:22 2020 +0900

    AP_HAL_SITL: send vehicle velocity to sitl vicon class

[33mcommit c8f6cb233ba3c38ad1ee430806d3a8995023d3ac[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Fri May 15 11:14:00 2020 +0900

    SITL: vicon supports sending vision-speed-estimate
    
    SIM_VICON_TMASK controls which of the 3 supported messages are sent
    SIM_VICON_VGLI_X/Y/Z allows introducing a velocity glitch

[33mcommit 3a209d5d84dc8f020e946a681a762fd2df0c47b0[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Fri May 15 13:06:31 2020 +0900

    SITL: SIM_Vicon loses unused obs_elements structure

[33mcommit cad988965686429105bc8e19aa703f6688d2dbca[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Mon May 18 14:22:40 2020 +0900

    AP_AHRS: send vision-speed-estimates to EKF3

[33mcommit c7817eaca1e0cfc890d5c564ced1e2368776bf47[m
Author: chobits <chobits@itri.org.tw>
Date:   Mon May 18 14:22:20 2020 +0900

    AP_NavEKF3: support VISION_SPEED_ESTIMATE
    
    Co-authored-by: Randy Mackay <rmackay9@yahoo.com>

[33mcommit bdb67532b0e95c0f145f54a63bd904e44478dff7[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Fri May 29 10:14:54 2020 +0900

    AP_Math: clarify get_vel_correction_for_sensor_offset comment

[33mcommit 4639e8a698bf625f43850e3fdd7aa761b1c41d18[m
Author: Randy Mackay <rmackay9@yahoo.com>
Date:   Tue May 19 14:05:48 2020 +0900

    AP_Math: add get_vel_correction_for_sensor_offset

[33mcommit 9b480ca755eaff4d95e68104b194508f41dd8229[m
Author: chobits <chobits@itri.org.tw>
Date:   Fri May 15 12:30:57 2020 +0800

    AP_Logger: support VISION_SPEED_ESTIMATE

[33mcommit 66a5f645d79d26435ea037ff927e649831693952[m
Author: chobits <chobits@itri.org.tw>
Date:   Wed May 13 16:30:40 2020 +0800

    AP_VisualOdom: support VISION_SPEED_ESTIMATE

[33mcommit ff6e4c4f9a112e544ad8ac8287ce01d0bd0b61b5[m
Author: chobits <chobits@itri.org.tw>
Date:   Wed May 13 16:29:55 2020 +0800

    GCS_MAVLink: support VISION_SPEED_ESTIMATE

[33mcommit dee095b4a49f61793d429a05e068ed5bb5a132b9[m
Author