/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.asiapp.service;

import com.asiapp.domain.sub.FeedBack;

/**
 *
 * @author Sudarsan
 */
public interface FeedBackService extends Service {

    void create(FeedBack feedBack);
}
