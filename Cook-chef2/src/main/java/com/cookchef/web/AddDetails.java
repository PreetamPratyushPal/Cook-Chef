package com.cookchef.web;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.cookchef.dao.RecipeDao;
import com.cookchef.model.RecipeModel;

/**
 * @author Mrudul Tora (0801IT191049)
 * @author Preetam Pratyush Pal (0801IT191059)
 */
@MultipartConfig
@WebServlet("/AddDetails")
public class AddDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String title = req.getParameter("title");
		int cookingTime = Integer.parseInt(req.getParameter("cooking-time"));
		String recipe = req.getParameter("recipe");
		recipe = recipe.replace("\n", "<br>");
		String ingredients = req.getParameter("ingredients");
		ingredients = ingredients.replace("\n", "<br>");
		Part part = req.getPart("image");
		String imageFileName = RandomString.generate() + part.getSubmittedFileName();
		int userId = (int) req.getSession().getAttribute("user_id");
		String uploadPath = "C:\\Users\\uaer\\eclipse-workspace\\Cook-chef2\\src\\main\\webapp\\images\\" + imageFileName;
		try {
			FileOutputStream fos = new FileOutputStream(uploadPath);
			InputStream is = part.getInputStream();

			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
			RecipeDao addRecipeDao = new RecipeDao();
			addRecipeDao.insertRecipe(new RecipeModel(title, cookingTime, recipe, ingredients, imageFileName, userId));
			resp.sendRedirect(req.getContextPath() + "/recipe-list.jsp");
		} catch (Exception e) {
			req.setAttribute("error", "Some error occured. Try Again!");
			RequestDispatcher rd = req.getRequestDispatcher("/Error.jsp");
			rd.forward(req, resp);
		}
	}

	
}