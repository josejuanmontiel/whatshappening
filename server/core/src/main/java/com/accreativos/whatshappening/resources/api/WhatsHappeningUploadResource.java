package com.accreativos.whatshappening.resources.api;

import static javax.ws.rs.core.MediaType.MULTIPART_FORM_DATA;
import static javax.ws.rs.core.MediaType.TEXT_PLAIN;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;

import org.joda.time.DateTime;

import com.accreativos.whatshappening.core.Upload;
import com.accreativos.whatshappening.db.UploadDAO;
import com.stromberglabs.jopensurf.SURFInterestPoint;
import com.stromberglabs.jopensurf.Surf;
import com.sun.jersey.core.header.FormDataContentDisposition;
import com.sun.jersey.multipart.FormDataBodyPart;
import com.sun.jersey.multipart.FormDataParam;

@Path("/api/v1")
@Produces(MediaType.APPLICATION_JSON)
public class WhatsHappeningUploadResource {

	public static final String UPLOAD_DIR = "/home/whatshappening/uploads";

	private final UploadDAO dao;
	
	public WhatsHappeningUploadResource(UploadDAO dao) {
		this.dao = dao;
	}

	@GET
	@Path("/list")
	public List<Upload> getList() {
		List<Upload> files = dao.findLastTen();
		return files;
	}
	
	@POST
	@Path("/image/upload")
	@Produces(TEXT_PLAIN)
	@Consumes(MULTIPART_FORM_DATA)
	public String uploadFile(@FormDataParam("image") final InputStream stream,
			@FormDataParam("image") FormDataContentDisposition fileDetail, @FormDataParam("image") FormDataBodyPart body,
			@Context HttpServletRequest request)
			throws Exception {

		String mime = body.getMediaType().getSubtype();

		String tempname = UUID.randomUUID().toString()+"."+mime;
		final String outputPath = UPLOAD_DIR + File.separator + tempname;
		
		String ip = request.getRemoteAddr();
		String fileName = fileDetail.getFileName();
		
		copyCompletely(stream, new FileOutputStream(outputPath));
		
		Surf surf = new Surf(ImageIO.read(new File(outputPath)));

		List<SURFInterestPoint> pointsA = surf.getFreeOrientedInterestPoints();
		
		List<com.accreativos.whatshappening.core.Upload> lastHundred = dao.findLastHundred();
		for (Iterator iterator = lastHundred.iterator(); iterator.hasNext();) {
			com.accreativos.whatshappening.core.Upload file = (com.accreativos.whatshappening.core.Upload) iterator.next();

			List<SURFInterestPoint> pointsB = byteToSURFInterestPoint(file.getSurfinterestpoint());
			if (isEquivalentTo(pointsA, pointsB)) {
				dao.increment(file.getPathToFile());
				return "Repeated "+(file.getRepeated()+1) +"times";
			}
		}

		// No son iguales...
		byte [] bytes = SURFInterestPointToByte(pointsA);
		dao.insert(fileName, tempname, ip, DateTime.now(), bytes, 1);

		return tempname;
	}
	
	private boolean isEquivalentTo(List<SURFInterestPoint> pointsA, List<SURFInterestPoint> pointsB){
		if ( pointsA.size() != pointsB.size() ) return false;
		for ( int i = 0; i < pointsA.size(); i++  ){
			SURFInterestPoint pointA = pointsA.get(i);
			SURFInterestPoint pointB = pointsB.get(i);
			if ( !pointA.isEquivalentTo(pointB) ) return false;
		}
		return true;
	}	
	
	private byte[] SURFInterestPointToByte (List<SURFInterestPoint> surfinterestpoint) {
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		ObjectOutputStream oos;
		try {
			oos = new ObjectOutputStream(baos);
			oos.writeObject(surfinterestpoint);
			oos.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return baos.toByteArray();
	}

	private List<SURFInterestPoint> byteToSURFInterestPoint(byte[] bytes) {
		List<SURFInterestPoint> result = new ArrayList<SURFInterestPoint>();
		try {
			ObjectInputStream ois = new ObjectInputStream(new ByteArrayInputStream(bytes));
			result = (List<SURFInterestPoint>)ois.readObject();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public static void copyCompletely(InputStream input, OutputStream output)
			throws IOException {
		 ReadableByteChannel source = Channels.newChannel(input);
	        WritableByteChannel target = Channels.newChannel(output);

	        ByteBuffer buffer = ByteBuffer.allocate(16 * 1024);
	        while (source.read(buffer) != -1) {
	            buffer.flip(); // Prepare the buffer to be drained
	            while (buffer.hasRemaining()) {
	                target.write(buffer);
	            }
	            buffer.clear(); // Empty buffer to get ready for filling
	        }

	        source.close();
	        target.close();
	}

}
