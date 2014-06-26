package com.accreativos.whatshappening.core;

import java.math.BigDecimal;
import java.sql.Array;

import org.joda.time.DateTime;

public class Upload {

	private BigDecimal id;
	private String fileName;
	private String pathToFile;
	private String ip;
	private DateTime time;
	private byte[] surfinterestpoint;
	private int repeated;
	private Array idsCompared;
	private boolean verified;

	public BigDecimal getId() {
		return id;
	}
	
	public void setId(BigDecimal id) {
		this.id = id;
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

	public byte[] getSurfinterestpoint() {
		return surfinterestpoint;
	}
	
	public void setSurfinterestpoint(byte[] surfinterestpoint) {
		this.surfinterestpoint = surfinterestpoint;
	}
	
	public int getRepeated() {
		return repeated;
	}

	public void setRepeated(int repeated) {
		this.repeated = repeated;
	}

	public Upload() {
	}

	public Array getIdsCompared() {
		return idsCompared;
	}

	public void setIdsCompared(Array idsCompared) {
		this.idsCompared = idsCompared;
	}

	public boolean isVerified() {
		return verified;
	}

	public void setVerified(boolean verified) {
		this.verified = verified;
	}

	public Upload(BigDecimal bigDecimal, String fileName, String pathToFile, String ip, DateTime time, byte[] surfinterestpoint, int repeated, boolean verified) {
		super();
		this.id = bigDecimal;
		this.fileName = fileName;
		this.pathToFile = pathToFile;
		this.ip = ip;
		this.time = time;
		this.surfinterestpoint = surfinterestpoint;
		this.repeated = repeated;
		this.verified = verified;
	}

}
