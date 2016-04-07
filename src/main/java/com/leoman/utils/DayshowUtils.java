package com.leoman.utils;

/**
 * Created by Administrator on 2016/4/7.
 */
public class DayshowUtils {

    public static int getSkinType(int skin) {

        if(skin >= 0 && skin <= 5) {
            return 0;
        }
        else if(skin >= 6 && skin <= 15){
            return 1;
        }
        else if(skin >= 16 && skin <= 25) {
            return 2;
        }
        else if(skin >= 26 && skin <= 35) {
            return 3;
        }
        else {
            return 4;
        }
    }
}
