/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.controller;


import com.mycompany.rboss.domain.CreditCard;
import com.mycompany.rboss.domain.User;
import com.mycompany.rboss.service.CreditCardService;
import com.mycompany.rboss.service.UserService;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author bin
 */
@Controller
public class UserController {
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private CreditCardService creditcardservice;
    
        @Autowired
    private JavaMailSender mailSender;
    @Autowired
    private PasswordEncoder encoder;
    
    
    @RequestMapping("/")
    public String index() {
        return "user/index";
    }
    
    @RequestMapping(value="/adminlogin", method = RequestMethod.GET)
    public String adminlogin(){
        return "admin/login";
    }
    
    @RequestMapping("/customLoginFailPage")
    public String customLoginFailPage(Model model) {
        model.addAttribute("msg", "Invalid Username or Password, please try again");
        return "login";
    }
    
    
    
    
     @RequestMapping("/faculty")
    public String facultyHome() {
        return "facultyHome";
    }
     @RequestMapping("/admin")
    public String adminHome() {
        return "adminHome";
    }
    
    @RequestMapping("/home")
    public String home() {
        return "home";
    }
    @RequestMapping("/default")
    public String gohome() {
        return "home";
    }

    
     @RequestMapping("/login")
    public String login() {
        return "user/login";
    }
    
    @RequestMapping("/register")
    public String register() {
        return "user/register";
    }
    
    @RequestMapping(value = "/index" , method = RequestMethod.GET)
    public String userHome() {
        return "user/index";
    }
    
    
    @RequestMapping(value = "/manageCustomer", method = RequestMethod.GET)
    public String manageCourse(@ModelAttribute("course") User customer) {
        return "manageCustomer";
    }
    
    @RequestMapping(value = "/customers", method = RequestMethod.GET)
    public String getAll(Model model) {
        model.addAttribute("customers", userService.getAll());
        return "customerList";
    }
    @RequestMapping(value = "/addcreditcard", method = RequestMethod.GET)
    public String getCreditcard(@ModelAttribute("creditcard") CreditCard creditCard) {

        return "addCreditCard";
    }
    
    @RequestMapping(value = "/addCustomer", method = RequestMethod.GET)
    public String addCustomer(@ModelAttribute("customer") User customer) {
        
        
        return "addCustomer";
    }

    @RequestMapping(value = "/addCustomer", method = RequestMethod.POST)
    public String addCustomer( User customer, RedirectAttributes re,Model model) {
        String view = "redirect:/login";
        //if (!result.hasErrors()) {
            boolean x=userService.add(customer);
            if(x==false){
                model.addAttribute("msg", "userName/email already exist, please try again ");
                model.addAttribute("customer",customer);
                 view = "addCustomer";
            }
                
                
       // } else {
        //    view = "addCustomer";
       // }
        return view;
    }
    
    @RequestMapping(value = "/customers/{id}", method = RequestMethod.GET)
    public String get(@PathVariable int id, Model model) {
        model.addAttribute("customer", userService.get(id));
        return "editCustomer";
    }
    @RequestMapping(value = "/customers/{id}", method = RequestMethod.POST)
    public String update(@Valid User customer, BindingResult result, 
            @PathVariable int id) {
        if (!result.hasErrors()) {
            String role=userService.get(id).getAuthority();
            customer.setAuthority(role);
            userService.update(customer); 
            return "redirect:/customers";
        } else {
            return "editCustomer";
        }
    }

    @RequestMapping(value = "/customers/delete", method = RequestMethod.POST)
    public String delete(int customerId) {
        userService.delete(customerId);
        return "redirect:/customers";
    }
    
    @RequestMapping("/accessDenied")
    public String error(Model model,Principal principal){
        model.addAttribute("message" , "You are not authorized to access this page");
        return "error";
    }
    
    
    // lists all users in the database
    
    @RequestMapping(value = "/listAllUsers", method = RequestMethod.GET)
    public String listAllUsers(Model model) {
       List<User> allusers= userService.getAll();
       model.addAttribute("allusers", allusers);
        return "listAllUsers";
        
    }
    

    
    
    
    @RequestMapping(value="/searchCustomer", method = RequestMethod.GET)
    public String searchCustomer(){
        return "searchUser";
    } 
    
    @RequestMapping(value="/searchCustomer", method = RequestMethod.POST)
    public String searchCustomer(String customerName,Model model,RedirectAttributes re) {
        List<User> customers =userService.searchCustomer(customerName);  //search course by name
        if(!customers.isEmpty()){
            re.addFlashAttribute("customers", customers);
           // model.addAttribute("courses", courses);
            return "redirect:/searchResult";
        }else{
            re.addFlashAttribute("msg", "User not found, please try again");
             return "redirect:/notFound";
        }
        
    }
    
    
    //displays the search customer result
    @RequestMapping(value = "/searchResult", method = RequestMethod.GET)
    public String serchCustomerResult(Model model) {       
        return "customerList";
    }
    
    
    //user profile where he can edit his profile
    
    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String manageCourse(Model model,Principal principal) {
        User user=userService.getByUsername(principal.getName());
        model.addAttribute("customer", user);
        return "profile";
    }
    
    
    @RequestMapping(value = "/yourProfile/{id}", method = RequestMethod.POST)
    public String updateYourProfile(@Valid User customer, BindingResult result, 
            @PathVariable int id) {
        if (!result.hasErrors()) {
            String role=userService.get(id).getAuthority();
            customer.setAuthority(role);
            userService.update(customer); 
            return "redirect:/yourProfile";
        } else {
            return "editCustomer";
        }
    }
    
    @RequestMapping(value = "/yourProfile", method = RequestMethod.GET)
    public String displayProfile(Model model,Principal principal) {
        User u=userService.getByUsername(principal.getName());
      //  List<User> customers=new ArrayList<>();
        //customers.add(u);
        model.addAttribute("u", u);
        return "displayProfile";
    }
    
    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String contact(Model model) {
        return "user/contact";
    }
    
    
    @RequestMapping(value = "/adminlistAllUsers", method = RequestMethod.GET)
    public String listAllUsersInAdmin(@ModelAttribute("user") User customer,Model model) {
       List<User> allusers= userService.getAll();
       model.addAttribute("allusers", allusers);
        return "admin/users";
        
    }
    
    @RequestMapping(value = "/adminuser/delete", method = RequestMethod.POST)
    public String deleteUsersFmAdmin(@RequestParam(value = "customerId", required = true) int customerId) {
        userService.delete(customerId);
        return "redirect:/adminlistAllUsers";
    }
    
    @RequestMapping(value = "/adminlistAllUsers", method = RequestMethod.POST)
    public String addUserFmAdmin(@Valid User user, RedirectAttributes re,Model model) {
        String view = "redirect:/addProduct";
        //if (!result.hasErrors()) {
            boolean x=userService.add(user);
            if(x==false){
                model.addAttribute("msg", "userName/email already exist, please try again ");
                model.addAttribute("customer",user);
                 
            }
                
                
       // } else {
        //    view = "addCustomer";
       // }
        return view;
    }
    
        @RequestMapping(value="/activation/{id}" , method = RequestMethod.GET)
    public String activateAccount(@PathVariable("id") String id, Model model){
        boolean result = userService.activate(id);
        if(result){
            model.addAttribute("msg", "You are now a registered user");
            
        }else{
            model.addAttribute("msg", "You are already registered");
        }
    
        return "redirect:/result";
    }
    
        
    @RequestMapping("/result")
    public String result(){
        return "result";
    }
    
        @RequestMapping(value = "/addUser", method = RequestMethod.GET)
    public String addUser(@ModelAttribute("customer") User customer) {
        return "addCustomer";
    }

    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public String addUser( User customer, RedirectAttributes re,Model model) {
        String view = "redirect:/login";
        //if (!result.hasErrors()) {
        String encodedUser=encoder.encode(customer.getUserName());
            customer.setEnabled(false);
            customer.setActivationLink(encodedUser);
            boolean x=userService.add(customer);
            if(x==false){
                model.addAttribute("msg", "userName/email already exist, please try again ");
                model.addAttribute("customer",customer);
                 return "addCustomer";
            }
            
     
            //call web service to create dummy credit card
            SimpleMailMessage email = new SimpleMailMessage();
            String link="http://localhost:8080/mycompany.com/activation/"+encodedUser;
            email.setText(link);
            email.setTo(customer.getEmail());
            email.setSubject("Click the link to activate account");
            mailSender.send(email);
           
        return view;
    }
    
}
