package com.accreativos;

import java.io.InputStream;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.mnm.asynctaskmanager.core.AsyncTaskManager;
import com.mnm.asynctaskmanager.core.OnTaskCompleteListener;
import com.mnm.asynctaskmanager.core.Task;

public class WhatsHappeningActivity extends Activity implements OnTaskCompleteListener {

	private AsyncTaskManager mAsyncTaskManager;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		// Create manager and set this activity as context and listener
		mAsyncTaskManager = new AsyncTaskManager(this, this);
		// Handle task that can be retained before
		mAsyncTaskManager.handleRetainedTask(getLastNonConfigurationInstance());
		
		Button next = (Button) findViewById(R.id.list_button);
		next.setOnClickListener(new View.OnClickListener() {
			public void onClick(View view) {
				setContentView(R.layout.activity_main);
				Intent myIntent = new Intent(view.getContext(),ListActivity.class);
				startActivityForResult(myIntent, 0);
			}
		});
		
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

					mAsyncTaskManager.setupTask(new Task(getResources(), is, uri.getPath()));
					
					return;
				} catch (Exception e) {
					writeMessage(e.toString());
				}
			} else if (extras.containsKey(Intent.EXTRA_TEXT)) {
				return;
			}
		}
		
		
	}

	public void sendMessage(View view) {
		Intent intent = new Intent(WhatsHappeningActivity.this, ListActivity.class);
		startActivity(intent);
	}
	
	private void writeMessage(String text) {
		Context context = getApplicationContext();
		int duration = Toast.LENGTH_LONG;
		Toast toast = Toast.makeText(context, text, duration);
		toast.show();
	}

	
	@Override
	public Object onRetainNonConfigurationInstance() {
		// Delegate task retain to manager
		return mAsyncTaskManager.retainTask();
	}

	public void onTaskComplete(Task task) {
		if (task.isCancelled()) {
			// Report about cancel
			Toast.makeText(this, R.string.task_cancelled, Toast.LENGTH_LONG).show();
		} else {
			// Get result
			String result = null;
			try {
				result = task.get();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			TextView t=(TextView)findViewById(R.id.main_activity); 
		    t.setText(result);
			
			// Report about result
			Toast.makeText(this,result, Toast.LENGTH_LONG).show();

		}
	}

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
    	// Inflate the menu; this adds items to the action bar if it is present.
    	getMenuInflater().inflate(com.accreativos.R.menu.main, menu);
    	return true;
    }

}

