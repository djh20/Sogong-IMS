package Sogong.IMS.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
    public void excute(HttpServletRequest request, HttpServletResponse response);
}