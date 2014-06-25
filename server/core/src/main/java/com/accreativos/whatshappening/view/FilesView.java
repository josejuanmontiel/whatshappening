package com.accreativos.whatshappening.view;

import io.dropwizard.views.View;

import java.util.List;

import com.accreativos.whatshappening.core.Upload;

public class FilesView extends View {
    private final List<Upload> files;

    public FilesView(List<Upload> files) {
        super("files.ftl");
        this.files = files;
    }

    public List<Upload> getFiles() {
		return files;
	}

}