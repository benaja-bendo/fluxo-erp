package com.bgrfacile.fluxo.controller;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import org.springframework.stereotype.Component;

@Component
public class MainController {
    @FXML
    private Button productButton;

    @FXML
    private Button customerButton;

    @FXML
    private Button reportButton;

    @FXML
    public void initialize() {
        productButton.setOnAction(e -> System.out.println("Produits"));
        customerButton.setOnAction(e -> System.out.println("Clients"));
        reportButton.setOnAction(e -> System.out.println("Rapports"));
    }
}
