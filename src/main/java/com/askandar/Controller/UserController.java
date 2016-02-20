package com.askandar.Controller;

import com.askandar.model.User;
import com.askandar.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by askandar on 14.02.16.
 */

@RequestMapping("/users")
@Controller
public class UserController {


    private UserService userService;


/**/
    @RequestMapping(method = RequestMethod.GET)
    public String list(Model uiModel, HttpServletRequest request){

        uiModel.addAttribute("users", userService.findAll());
        return "users/list";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String show(@PathVariable("id") Long id, Model uiModel){
        User user = userService.findById(id);
        uiModel.addAttribute("user", user);
        return "users/show";
    }


    @RequestMapping(value = "/remove/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") Long id, Model uiModel){
        User user = userService.findById(id);
        userService.delete(user);
        return "redirect:/users/";
    }



    @RequestMapping(value = "{id}",params = "form", method = RequestMethod.POST)
    public String update(User user, BindingResult bindingResult, Model uiModel){
        if (bindingResult.hasErrors()){
            uiModel.addAttribute("user", user);
            return "users/update";
        }

        uiModel.asMap().clear();
        userService.save(user);
        return "redirect:/users/";
    }

    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String updateForm(@PathVariable("id") Long id, Model uiModel){
        uiModel.addAttribute("user", userService.findById(id));
        return "users/update";
    }

    @RequestMapping(params = "form", method = RequestMethod.POST)
    public String create(User user, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest, RedirectAttributes redirectAttributes){
        if (bindingResult.hasErrors()){
            uiModel.addAttribute("user", user);
            return "users/create";
        }
        uiModel.asMap().clear();
        userService.save(user);
        return "redirect:/users/";
    }

    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String createForm(Model uiModel){
        User user = new User();
        uiModel.addAttribute("user", user);
        return "users/create";
    }


    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }


}
