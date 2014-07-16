package com.mycompany.rboss.controller;

import com.mycompany.rboss.domain.Account;
import com.mycompany.rboss.service.AccountService;
import java.util.List;
import java.util.Random;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/account")
public class AccountRestFullService {

    @Autowired
    AccountService accountService;

    @RequestMapping(value = "/{name}", method = RequestMethod.GET)
    public @ResponseBody
    String getMovie(@PathVariable String name, ModelMap model) {

        //model.addAttribute("movie", name);
        return "list";

    }

    @RequestMapping(value = "/create/", method = RequestMethod.POST)
    public @ResponseBody
    String create(@PathVariable String name, ModelMap model) {

        Account a = new Account();
        a.setAccName(name.toLowerCase());
        a.setAccNo(give16DigitRendomNumber() + "");
        a.setPin(give3DigitRendomNumber() + "");
        a.setExpDate("07/07/2014");

        accountService.add(a);
        //model.addAttribute("movie", name);
        return "list";

    }

    @RequestMapping(value = "/add/", method = RequestMethod.POST)
    public @ResponseBody
    String addAmount(@Valid Account account, ModelMap model) {

        account.setAccName(account.getAccName().toLowerCase());
        List<Account> accounts = accountService.getUserByName(account.getAccName());

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
    
    @RequestMapping(value = "/sub/", method = RequestMethod.POST)
    public @ResponseBody
    String deductAmount(@Valid Account account, ModelMap model) {

        account.setAccName(account.getAccName().toLowerCase());
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

}
