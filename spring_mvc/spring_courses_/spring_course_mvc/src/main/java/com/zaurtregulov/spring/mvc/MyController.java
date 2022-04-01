package com.zaurtregulov.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
public class MyController {

//    @RequestMapping("/")
//    public String showFirstView(){
//        return "first-view";
//    }
//
//    @RequestMapping("lol")
//    public String showSecondView(){
//        return "second-view";
//    }
//
//    @RequestMapping("askDetails")
//    public String askDetailsView(){
//        return "ask-emp-details-view";
//    }

//    @RequestMapping("showDetails")
//    public String showDetailsView(){
//        return "show-emp-details-view";
//    }

//    @RequestMapping("showDetails")
//    public String showDetailsView(HttpServletRequest request, Model model){
//        String empName = request.getParameter("employeeName");
//        empName = "Mr. " +empName;
//        model.addAttribute("nameAttribute", empName);
//
//        return "show-emp-details-view";
//    }

//    @RequestMapping("showDetails")
//    public String showDetailsView(@RequestParam("employeeName") String empName, Model model){
//
//        empName = "Mr. " + empName;
//        model.addAttribute("nameAttribute", empName);
//
//        return "show-emp-details-view";
//    }


    /**********урок 62, всё что выше до урока 62*/

    @RequestMapping("askDetails")
    public String askDetailsView(Model model){

        model.addAttribute("employee", new Employee());


        return "ask-emp-details-view_2";
    }

    @RequestMapping("showDetails")
    public String showDetailsView(@Valid @ModelAttribute("employee") Employee emp, BindingResult binres){
        if (binres.hasErrors())
            return "ask-emp-details-view_2";
        else
            return "show-emp-details-view_2";
    }



    /**********урок 62*/


}
