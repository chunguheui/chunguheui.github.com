package com.shop.controller.goods;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.GoodsVO;
import com.shop.model.GoodsDAO;

@WebServlet("/GetGoodsListCtrl")
public class GetGoodsListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetGoodsListCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String gcategory = request.getParameter("gcategory");
		String gcategory2 = request.getParameter("gcategory2");
		GoodsDAO dao = new GoodsDAO();
		ArrayList<GoodsVO> list;
		if(gcategory!=null && gcategory2!=null ) {
			list = dao.getGoodsList(gcategory, gcategory2);
		} else if(gcategory!=null) {
			list = dao.getGoodsList(gcategory);
		} else {
			list = dao.getGoodsList();
		}
		request.setAttribute("list", list);
		RequestDispatcher view = request.getRequestDispatcher("./goods/getGoodsList.jsp");
		view.forward(request, response);
	}
}