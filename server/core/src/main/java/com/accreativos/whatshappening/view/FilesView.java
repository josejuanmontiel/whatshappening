package com.accreativos.whatshappening.view;

import io.dropwizard.views.View;

import java.util.List;

import com.accreativos.whatshappening.core.File;

public class FilesView extends View {
    private final List<File> files;

    public FilesView(List<File> files) {
        super("files.ftl");
        this.files = files;
    }

    public List<File> getFiles() {
		return files;
	}

}