package com.accreativos;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.widget.Toast;

public class HelloAndroidActivity extends Activity {

    /**
     * Called when the activity is first created.
     * @param savedInstanceState If the activity is being re-initialized after 
     * previously being shut down then this Bundle contains the data it most 
     * recently supplied in onSaveInstanceState(Bundle). <b>Note: Otherwise it is null.</b>
     */
	/** Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		Intent intent = getIntent();
		Bundle extras = intent.getExtras();
		String action = intent.getAction();

		// if this is from the share menu
		if (Intent.ACTION_SEND.equals(action))
		{
			if (extras.containsKey(Intent.EXTRA_STREAM))
			{
				try
				{
					// Get resource path from intent callee
					Uri uri = (Uri) extras.getParcelable(Intent.EXTRA_STREAM);

					// Query gallery for camera picture via
					// Android ContentResolver interface
					ContentResolver cr = getContentResolver();
					InputStream is = cr.openInputStream(uri);
					// Get binary bytes for encode
					byte[] data = getBytesFromFile(is);

					doFileUpload("file1",data);

					return;
				} catch (Exception e)
				{
					Log.e(this.getClass().getName(), e.toString());
				}

			} else if (extras.containsKey(Intent.EXTRA_TEXT))
			{
				return;
			}
		}

	}

	private void writeMessage(String text) {
		Context context = getApplicationContext();
		int duration = Toast.LENGTH_LONG;
		Toast toast = Toast.makeText(context, text, duration);
		toast.show();
	}
	
	private void doFileUpload(String existingFileName, byte[] buffer) {

	    HttpURLConnection conn = null;
	    DataOutputStream dos = null;
	    DataInputStream inStream = null;
	    String lineEnd = "\r\n";
	    String twoHyphens = "--";
	    String boundary = "*****";
	    String urlString = "http://192.168.1.153:8080/image/attached";

	    try {
	    	writeMessage("Inicio...");
	    	
	        //------------------ CLIENT REQUEST
	        // open a URL connection to the Servlet
	        URL url = new URL(urlString);
	        // Open a HTTP connection to the URL
	        conn = (HttpURLConnection) url.openConnection();
	        // Allow Inputs
	        conn.setDoInput(true);
	        // Allow Outputs
	        conn.setDoOutput(true);
	        // Don't use a cached copy.
	        conn.setUseCaches(false);
	        // Use a post method.
	        conn.setRequestMethod("POST");
	        conn.setRequestProperty("Connection", "Keep-Alive");
	        conn.setRequestProperty("Content-Type", "multipart/form-data;boundary=" + boundary);
	        
	        writeMessage("Empezamos a escribir...");
	        
	        dos = new DataOutputStream(conn.getOutputStream());
	        dos.writeBytes(twoHyphens + boundary + lineEnd);
	        dos.writeBytes("Content-Disposition: form-data; name=\"image\";filename=\"" + existingFileName + "\"" + lineEnd);
	        dos.writeBytes(lineEnd);
	        
            dos.write(buffer, 0, buffer.length);

	        // send multipart form data necesssary after file data...
	        dos.writeBytes(lineEnd);
	        dos.writeBytes(twoHyphens + boundary + twoHyphens + lineEnd);
	        // close streams
	        dos.flush();
	        dos.close();
	    } catch (MalformedURLException ex) {
	    	writeMessage("error: " + ex.getMessage());
	    } catch (IOException ioe) {
	    	writeMessage("error: " + ioe.getMessage());
	    }

	    //------------------ read the SERVER RESPONSE
	    try {

	        inStream = new DataInputStream(conn.getInputStream());
	        String str;

	        while ((str = inStream.readLine()) != null) {

	            Log.e("Debug", "Server Response " + str);

	        }

	        inStream.close();

	    } catch (IOException ioex) {
	        Log.e("Debug", "error: " + ioex.getMessage(), ioex);
	    }
	}
	
	public static byte[] getBytesFromFile(InputStream is)
	{
		try
		{
			ByteArrayOutputStream buffer = new ByteArrayOutputStream();

			int nRead;
			byte[] data = new byte[16384];

			while ((nRead = is.read(data, 0, data.length)) != -1)
			{
				buffer.write(data, 0, nRead);
			}

			buffer.flush();

			return buffer.toByteArray();
		} catch (IOException e)
		{
			Log.e("com.eggie5.post_to_eggie5", e.toString());
			return null;
		}
	}

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
	// Inflate the menu; this adds items to the action bar if it is present.
	getMenuInflater().inflate(com.accreativos.R.menu.main, menu);
	return true;
    }

}

