package com.mnm.asynctaskmanager.core;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import android.content.Context;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.Toast;

import com.accreativos.R;

public final class Task extends AsyncTask<Void, String, Boolean> {

	protected final Resources mResources;
	protected final InputStream is;

	private Boolean mResult;
	private String mProgressMessage;
	private IProgressTracker mProgressTracker;

	/* UI Thread */
	public Task(Resources resources, InputStream is) {
		// Keep reference to resources
		mResources = resources;
		this.is = is;
		// Initialise initial pre-execute message
		mProgressMessage = resources.getString(R.string.task_starting);
	}

	/* UI Thread */
	public void setProgressTracker(IProgressTracker progressTracker) {
		// Attach to progress tracker
		mProgressTracker = progressTracker;
		// Initialise progress tracker with current task state
		if (mProgressTracker != null) {
			mProgressTracker.onProgress(mProgressMessage);
			if (mResult != null) {
				mProgressTracker.onComplete();
			}
		}
	}

	/* UI Thread */
	@Override
	protected void onCancelled() {
		// Detach from progress tracker
		mProgressTracker = null;
	}

	/* UI Thread */
	@Override
	protected void onProgressUpdate(String... values) {
		// Update progress message
		mProgressMessage = values[0];
		// And send it to progress tracker
		if (mProgressTracker != null) {
			mProgressTracker.onProgress(mProgressMessage);
		}
	}

	/* UI Thread */
	@Override
	protected void onPostExecute(Boolean result) {
		// Update result
		mResult = result;
		// And send it to progress tracker
		if (mProgressTracker != null) {
			mProgressTracker.onComplete();
		}
		// Detach from progress tracker
		mProgressTracker = null;
	}

	/* Separate Thread */
	@Override
	protected Boolean doInBackground(Void... arg0) {
		// Working in separate thread

		if (isCancelled()) {
			// This return causes onPostExecute call on UI thread
			return false;
		}

		// This call causes onProgressUpdate call on UI thread
		publishProgress(mResources.getString(R.string.task_working, 0));
	
		byte[] data = getBytesFromFile(is);
	    
		doFileUpload("file1",data);

		// This return causes onPostExecute call on UI thread
		return true;
	}

	private void doFileUpload(String existingFileName, byte[] buffer) {

		HttpURLConnection conn = null;
		DataOutputStream dos = null;
		DataInputStream inStream = null;
		String lineEnd = "\r\n";
		String twoHyphens = "--";
		String boundary = "*****";
		String urlString = "http://10.0.6.52:8080/image/attached";

		try {
			// ------------------ CLIENT REQUEST
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
			conn.setRequestProperty("Content-Type",
					"multipart/form-data;boundary=" + boundary);

			dos = new DataOutputStream(conn.getOutputStream());
			dos.writeBytes(twoHyphens + boundary + lineEnd);
			dos.writeBytes("Content-Disposition: form-data; name=\"image\";filename=\""
					+ existingFileName + "\"" + lineEnd);
			dos.writeBytes(lineEnd);

			dos.write(buffer, 0, buffer.length);

			// send multipart form data necesssary after file data...
			dos.writeBytes(lineEnd);
			dos.writeBytes(twoHyphens + boundary + twoHyphens + lineEnd);
			// close streams
			dos.flush();
			dos.close();
		} catch (MalformedURLException ex) {
		} catch (IOException ioe) {
		}

		// ------------------ read the SERVER RESPONSE
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

	public static byte[] getBytesFromFile(InputStream is) {
		try {
			ByteArrayOutputStream buffer = new ByteArrayOutputStream();

			int nRead;
			byte[] data = new byte[16384];

			while ((nRead = is.read(data, 0, data.length)) != -1) {
				buffer.write(data, 0, nRead);
			}

			buffer.flush();

			return buffer.toByteArray();
		} catch (IOException e) {
			Log.e("com.eggie5.post_to_eggie5", e.toString());
			return null;
		}
	}

}