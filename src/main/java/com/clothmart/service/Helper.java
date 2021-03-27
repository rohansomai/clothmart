package com.clothmart.service;

public class Helper {

	public String get10Words(String string) {
		
		String[] words = string.split(" ");
		if (words.length < 10)
		{
			return string;
		}
		else
		{
			String finalString = "";
			for(int i=0;i<10;i++)
			{
				finalString += words[i] + " ";
			}
			return (finalString + "...");
		}
	}

}
