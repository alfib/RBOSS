package com.mycompany.rboss.controller;

import com.mycompany.rboss.domain.Account;
import com.mycompany.rboss.service.AccountService;
import static com.mycompany.rboss.service.UserService.SERVER_URI;
import java.util.List;
import java.util.Random;
import javax.validation.Valid;
import javax.ws.rs.QueryParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

@Controller
@RequestMapping("/restaccount")
public class AccountRestFullService {

    @Autowired
    AccountService accountService;

   public static final String SERVER_URI = "http://localhost:31503/mycompany.com/restaccount/";
    
    @RequestMapping(value = "/{name}", method = RequestMethod.GET)
    public @ResponseBody
    String getMovie(@PathVariable String name, ModelMap model) {

        //model.addAttribute("movie", name);
        return name;

    }

    @RequestMapping(value = "/create/{name}", method = RequestMethod.GET)
    public @ResponseBody
    String create(@PathVariable String name, ModelMap model) {

        Account a = new Account();
        a.setAccName(name.toLowerCase());
        a.setAccNo(give16DigitRendomNumber() + "");
        a.setPin(give3DigitRendomNumber() + "");
        a.setExpDate("07-07-2014");

        accountService.add(a);
        //model.addAttribute("movie", name);
        return "y";

    }

    @RequestMapping(value = "/add/{name}", method = RequestMethod.GET)
    public @ResponseBody
    String addAmount(@PathVariable String name,ModelMap model) {
        
        String[] listArg=name.split("_");
        System.out.println(""+listArg[0]);
                System.out.println(""+listArg[1]);
                        System.out.println(""+listArg[2]);
                                System.out.println(""+listArg[3]);
                                        System.out.println(""+listArg[4]);
        Account account=new Account();
        account.setAccName(listArg[0].toLowerCase());
        account.setAccNo(listArg[1]);
        account.setExpDate(listArg[2]);
        account.setPin(listArg[3]);
        account.setMoney(Long.parseLong(listArg[4]));
        System.out.println("--->"+account);
        
        
        List<Account> accounts = accountService.getUserByName(account.getAccName());

        if (accounts == null) {
            return "nv";
        } else {
            Account account1 = accounts.get(0);
            System.out.println("--getAc-->"+account1);
            if(account1.equals(account)){
                accountService.addAmount(account.getMoney(), account1.getAccName());
                System.out.println("---am-->added");
                //return "y";
            }else{
                System.out.println("---am-->not added");
                //return "f";
            }
            //model.addAttribute("movie", name);
        }
        
        return name;
    }
    
    /**
     *
     * @param name
     * @param no
     * @param date
     * @param pin
     * @param money
     * @param model
     * @return
     */
    @RequestMapping(value = "/add1", method = RequestMethod.POST)
    public @ResponseBody
    String addAmount2(@QueryParam("name") String name,@QueryParam("no") String no,
            @QueryParam("date") String date,@QueryParam("pin") String pin,
            @QueryParam("money") String money,ModelMap model) {
        
        Account account=new Account();
        account.setAccName(name.toLowerCase());
        account.setAccNo(no);
        account.setExpDate(date);
        account.setPin(pin);
        account.setMoney(Long.parseLong(money));
        System.out.println("---1---");
        List<Account> accounts = accountService.getUserByName(account.getAccName());
        System.out.println("size---"+accounts.size());
        
        if (accounts == null) {
            return "nv";
        } else {
            Account account1 = accounts.get(0);

            if(account1.equals(account)){
                accountService.addAmount(account.getMoney(), account1.getAccName());
                return "y";
            }else{
                return "f";
            }
            //model.addAttribute("movie", name);
        }
    }
    
    @RequestMapping(value = "/sub/{name}", method = RequestMethod.GET)
    public @ResponseBody
    String deductAmount(@PathVariable String name, ModelMap model) {

        String[] listArg=name.split("_");
        
        Account account=new Account();
        account.setAccName(listArg[0].toLowerCase());
        account.setAccNo(listArg[1]);
        account.setExpDate(listArg[2]);
        account.setPin(listArg[3]);
        account.setMoney(Long.parseLong(listArg[4]));
        
        List<Account> accounts = accountService.getUserByName(account.getAccName());

        if (accounts == null) {
            return "nv";
        } else {
            Account account1 = accounts.get(0);

            if(account1.equals(account)){
                if(account.getMoney() > account1.getMoney()){
                    return "fm";
                }else{
                    accountService.deductAmount(account.getMoney(), account1.getAccName());
                    return "y";
                }
            }else{
                return "f";
            }
            //model.addAttribute("movie", name);
        }
//        return name;
    }

    /**
     * create random number for 16 digit account number
     *
     * @return
     */
    private long give16DigitRendomNumber() {
        Random rand = new Random();
        long accumulator = 1 + rand.nextInt(9); // ensures that the 16th digit isn't 0
        for (int i = 0; i < 15; i++) {
            accumulator *= 10L;
            accumulator += rand.nextInt(10);
        }
        return accumulator;
    }

    /**
     * create random number for 4 digit pin
     *
     * @return
     */
    private int give3DigitRendomNumber() {
        Random rand = new Random();
        int accumulator = 1 + rand.nextInt(9); // ensures that the 16th digit isn't 0
        for (int i = 0; i < 2; i++) {
            accumulator *= 10L;
            accumulator += rand.nextInt(10);
        }
        return accumulator;
    }

    
    public static void main(String[] a){
        //new AccountRestFullService().create("Naimish", null);
//        1	d	7143779209017082	07/07/2014	5000	752	0
//2	e	8279462039496760	07/07/2014	5000	626	0

        //createAccount("xy");
        
        add("d", "7143779209017082", "07-07-2014", "752", 1000);
        
        //add2("d", "7143779209017082", "07/07/2014", "752", 1000);
    }
    
     private static void createAccount(String name) {
        RestTemplate restTemplate = new RestTemplate();
        //we can't get List<Employee> because JSON convertor doesn't know the type of
        //object in the list and hence convert it to default JSON object type LinkedHashMap
        String emps = restTemplate.getForObject(SERVER_URI+"create/"+name, String.class);
        
        System.out.println("----->"+emps);
        
    }
     
     private static void add2(String name,String no,String pin,String date,long money) {
        RestTemplate restTemplate = new RestTemplate();
        //we can't get List<Employee> because JSON convertor doesn't know the type of
        //object in the list and hence convert it to default JSON object type LinkedHashMap
        String emps = restTemplate.getForObject(SERVER_URI+"add1?name="+name+"&no="+no+"&date="+date+"&pin="+pin+"&money="+money, String.class);
        System.out.println("----->"+emps);
        
    }
    
     private static void add(String name,String no,String pin,String date,long money) {
        RestTemplate restTemplate = new RestTemplate();
        //we can't get List<Employee> because JSON convertor doesn't know the type of
        //object in the list and hence convert it to default JSON object type LinkedHashMap
        String emps = restTemplate.getForObject(SERVER_URI+"add/"+name+"_"+no+"_"+date+"_"+pin+"_"+money, String.class);
        System.out.println("----->"+emps);
        
    }
     
     private static void sub(String name,String no,String pin,String date,long money) {
        RestTemplate restTemplate = new RestTemplate();
        //we can't get List<Employee> because JSON convertor doesn't know the type of
        //object in the list and hence convert it to default JSON object type LinkedHashMap
        String emps = restTemplate.getForObject(SERVER_URI+"sub/"+name+"_"+no+"_"+date+"_"+pin+"_"+money, String.class);
        System.out.println("----->"+emps);
        
    }
}

