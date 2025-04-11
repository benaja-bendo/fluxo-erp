package com.bgrfacile.fluxo;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class FluxoApplication extends Application {

    private static String[] args;
    private ConfigurableApplicationContext context;

    public static void main(String[] args) {
        FluxoApplication.args = args;
        launch(args);
    }

    @Override
    public void init() {
        context = SpringApplication.run(FluxoApplication.class, args);
    }

    @Override
    public void start(Stage primaryStage) throws Exception {
        primaryStage.setTitle("JavaFX avec Spring Boot");

        FXMLLoader loader = new FXMLLoader(getClass().getResource("/templates/main-view.fxml"));
        loader.setControllerFactory(context::getBean);

        Parent root = loader.load();
        Scene scene = new Scene(root);

        primaryStage.setScene(scene);
        primaryStage.show();
    }

    @Override
    public void stop() {
        context.close();
    }
}
