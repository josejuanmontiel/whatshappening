package com.accreativos.whatshappening;

import io.dropwizard.Application;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;
import com.accreativos.whatshappening.resources.*;
import com.accreativos.whatshappening.health.TemplateHealthCheck;

public class WhatsHappeningApplication extends Application<WhatsHappeningConfiguration> {

    public static void main(String[] args) throws Exception {
        new WhatsHappeningApplication().run(args);
    }

    @Override
    public String getName() {
        return "WhatsHappening";
    }

    @Override
    public void initialize(Bootstrap<WhatsHappeningConfiguration> bootstrap) {
        // nothing to do yet
    }

    @Override
    public void run(WhatsHappeningConfiguration configuration, Environment environment) {
		final WhatsHappeningResource resource = new WhatsHappeningResource(configuration.getTemplate(),configuration.getDefaultName());
	    environment.jersey().register(resource);

	    final TemplateHealthCheck healthCheck = new TemplateHealthCheck(configuration.getTemplate());
	    environment.healthChecks().register("template", healthCheck);
    }

}
