/*
 * Copyright (C) 2008, The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.location;

import android.location.Location;

/**
 * {@hide}
 */
oneway interface IGnssStatusListener
{
    void onGnssStarted();
    void onGnssStopped();
    void onFirstFix(int ttff);
    void onSvStatusChanged(int svCount, in int[] svidWithFlags, in float[] cn0s,
            in float[] elevations, in float[] azimuths);
            // android 11
            // void onSvStatusChanged(int svCount, in int[] svidWithFlags, in float[] cn0s,
                           //            in float[] elevations, in float[] azimuths,
                           //            in float[] carrierFreqs, in float[] basebandCn0s);
    void onNmeaReceived(long timestamp, String nmea);
}
