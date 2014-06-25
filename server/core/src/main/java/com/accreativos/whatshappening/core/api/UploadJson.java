package com.accreativos.whatshappening.core.api;

public class UploadJson {

	private String fileName;
	private String pathToFile;
	private int repeated;

	public UploadJson() {
	}

	public UploadJson(String fileName, String pathToFile, int repeated) {
		super();
		this.fileName = fileName;
		this.pathToFile = pathToFile;
		this.repeated = repeated;
	}

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

	public int getRepeated() {
		return repeated;
	}

	public void setRepeated(int repeated) {
		this.repeated = repeated;
	}

}
