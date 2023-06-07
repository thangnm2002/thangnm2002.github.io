package org.example;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

@Controller
public class EmployeeController {
    @RequestMapping(value = {"/","/addEmployee"}, method = {RequestMethod.GET, RequestMethod.PUT})
    public String addEmployee(Model model){
        model.addAttribute("employee", new Employee());

        List<String> listFavorites = new ArrayList<String>();
        listFavorites.add("Swimming");
        listFavorites.add("Walking");
        listFavorites.add("Watching Movies");
        listFavorites.add("Reading Comic");
        listFavorites.add("Listening Musics");

        model.addAttribute("listFavorites", listFavorites);

        List<String> listPosition = new ArrayList<String>();
        listPosition.add("Developer");
        listPosition.add("Designer");
        listPosition.add("Tester");
        listPosition.add("QA");
       model.addAttribute("listFavorites", listFavorites);
        model.addAttribute("listPosition", listPosition);

        return "add-employee";
    }
    // Why not Mapping
    @RequestMapping(value = {"/addEmloyee"}, method = { RequestMethod.POST})
    public String doAddEmployee(@ModelAttribute("employee") Employee employee, ModelMap modelMap){
        modelMap.addAttribute("employee", employee);
        return "views-employee";
    }

}
