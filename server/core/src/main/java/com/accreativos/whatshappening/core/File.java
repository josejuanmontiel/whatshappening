package com.accreativos.whatshappening.core;

import org.joda.time.DateTime;

public class File {

	private String fileName;
	private String pathToFile;
	private String ip;
	private DateTime time;
	private int repeated;

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	public String getPathToFile() {
		return pathToFile;
	}
	
	public void setPathToFile(String pathToFile) {
		this.pathToFile = pathToFile;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public DateTime getTime() {
		return time;
	}

	public void setTime(DateTime time) {
		this.time = time;
	}

	public int getRepeated() {
		return repeated;
	}

	public void setRepeated(int repeated) {
		this.repeated = repeated;
	}

	public File() {
	}

	public File(String fileName, String pathToFile, String ip, DateTime time, int repeated) {
		super();
		this.fileName = fileName;
		this.pathToFile = pathToFile;
		this.ip = ip;
		this.time = time;
		this.repeated = repeated;
	}

}
