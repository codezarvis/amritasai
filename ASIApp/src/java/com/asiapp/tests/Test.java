/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.asiapp.tests;

import com.asiapp.domain.sub.Subject;
import com.asiapp.utils.service.ServiceUtils;
import java.util.List;
import org.apache.log4j.Logger;

/**
 *
 * @author Sudarsan
 */
public class Test {

    private static Logger LOG = Logger.getLogger(Test.class);
    public static void main(String args[]) {

//        AppUser appUser = new AppUser();
//        appUser.setUserName("admin");
//        appUser.setPassword("admin");
//        appUser.setUserRole("admin");
//        appUser.setQuestion("What is your pet name ?");
//        appUser.setAnswer("sunny");
//        appUser.setCreatedBy(1);
//        appUser.setCreatedOn(new java.util.Date());
//        appUser.setModifiedBy(1);
//        appUser.setModifiedOn(new java.util.Date());
//        appUser.setActive(1);
//
//        ServiceUtils.getAppUserService().create(appUser);

//        AppUser appUser = ServiceUtils.getAppUserService().authenticate("admin", "admin");
//        LOG.debug(appUser);


        List<Subject> list = ServiceUtils.getStudentService().getSubjects("1111");
        LOG.debug(list);


    }
}
