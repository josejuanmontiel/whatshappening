package com.accreativos.api;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.accreativos.R;

/** A class to parse json data */
public class UploadJSONParser {

	// Receives a JSONObject and returns a list
	public List<HashMap<String, Object>> parse(JSONArray jCountries) {

		// Invoking getCountries with the array of json object
		// where each json object represent a country
		return getUploads(jCountries);
	}

	private List<HashMap<String, Object>> getUploads(JSONArray jUploads) {
		int countryCount = jUploads.length();
		List<HashMap<String, Object>> countryList = new ArrayList<HashMap<String, Object>>();
		HashMap<String, Object> country = null;

		// Taking each country, parses and adds to list object
		for (int i = 0; i < countryCount; i++) {
			try {
				// Call getCountry with country JSON object to parse the country
				country = getUpload((JSONObject) jUploads.get(i));
				countryList.add(country);

			} catch (JSONException e) {
				e.printStackTrace();
			}
		}

		return countryList;
	}

	// Parsing the Country JSON object
	private HashMap<String, Object> getUpload(JSONObject jCountry) {

		HashMap<String, Object> country = new HashMap<String, Object>();
		String fileName = "";
		String pathToFile = "";
		String repeated = "";

		try {
			fileName = jCountry.getString("fileName");
			pathToFile = jCountry.getString("pathToFile");
			repeated = jCountry.getString("repeated");

			country.put("fileName", fileName);
			country.put("pathToFile", pathToFile);
			country.put("upload", R.drawable.blank);
			country.put("repeated", "Imagen subida: "+repeated+" veces");

		} catch (JSONException e) {
			e.printStackTrace();
		}
		return country;
	}
}
