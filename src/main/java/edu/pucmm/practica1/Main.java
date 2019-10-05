package edu.pucmm.practica1;

import edu.pucmm.practica1.encapsulacion.Usuario;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

import javax.servlet.http.HttpServletResponse;

import java.util.Map;

import static spark.Spark.*;

public class Main {
    public static String renderFreemarker(Map<String, Object> model, String templatePath) {
        return new FreeMarkerEngine().render(new ModelAndView(model, templatePath));
    }

    public static void main(String[] args) {
        before("/", (request, response) -> {
            Usuario usuario = request.session(true).attribute("usuario");
            if (usuario == null) {
                response.redirect("/login", 301);
            }
        });

        get("/login", (request, response) -> {
            return renderFreemarker(null, "formulario.ftl");
        });
    }
}
