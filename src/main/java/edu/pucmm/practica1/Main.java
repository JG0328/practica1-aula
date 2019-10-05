package edu.pucmm.practica1;

import edu.pucmm.practica1.encapsulacion.Usuario;
import spark.ModelAndView;
import spark.Session;
import spark.template.freemarker.FreeMarkerEngine;

import javax.servlet.http.HttpServletResponse;

import java.util.Map;

import static spark.Spark.*;

public class Main {
    public static String renderFreemarker(Map<String, Object> model, String templatePath) {
        return new FreeMarkerEngine().render(new ModelAndView(model, templatePath));
    }

    public static void main(String[] args) {
        staticFiles.location("/publico");

        before("/", (request, response) -> {
            Usuario usuario = request.session(true).attribute("usuario");
            if (usuario == null) {
                response.redirect("/login", 301);
            }
        });

        get("/login", (request, response) -> {
            Usuario usuario = request.session(true).attribute("usuario");
            ;
            return renderFreemarker(null, "formulario.ftl");
        });

        post("/auth", (request, response) -> {
            Session session = request.session(true);
            Usuario usuario = null;
            if (request.params("usuario").equalsIgnoreCase("admin") && request.params("contrasena").equalsIgnoreCase("admin")) {
                usuario = new Usuario("admin", "admin");
            } else {
                halt(401, "Credenciales no validas");
            }

            session.attribute("usuario", usuario);
            response.redirect("/login");
            return "";
        });

        get("/", (request, response) -> {
            return renderFreemarker(null, "main.ftl");
        });
    }
}
