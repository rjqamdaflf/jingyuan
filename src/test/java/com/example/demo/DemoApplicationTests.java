package com.example.demo;


import org.springframework.boot.test.context.SpringBootTest;

import java.util.Map;
import java.util.TreeMap;

@SpringBootTest
public class DemoApplicationTests {


    public static boolean check(String args) {

        Map<Character, Integer> map = new TreeMap<>();

        char[] chars = args.toCharArray();

        Character old = null;
        for (char aChar : chars) {
            if (old != null && old > aChar) {
                return false;
            }
            old = aChar;
            if (map.containsKey(aChar)) {
                int newInt = map.get(aChar) + 1;
                map.put(aChar, newInt);
            } else {
                map.put(aChar, 1);
            }
        }
        if (map.size() > 2) {
            Integer checkNum = null;
            Character checkChar = null;
            for (Map.Entry<Character, Integer> entry : map.entrySet()) {
                if (checkNum != null && entry.getValue().intValue() != checkNum.intValue()) {
                    return false;
                } else if (checkChar != null && entry.getKey() != checkChar + 1) {
                    return false;

                } else {
                    checkNum = entry.getValue();
                    checkChar = entry.getKey();
                }
            }
            return true;
        } else {
            return false;
        }
    }

    public static void main(String[] args) {
        System.out.println(check("ooopppqqq"));
    }

}
