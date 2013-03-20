/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.asiapp.service.impl;

import com.asiapp.domain.sub.FeedBack;
import com.asiapp.service.FeedBackService;
import com.asiapp.utils.hibernate.HibernateUtils;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Sudarsan
 */
public class FeedBackServiceImpl extends ServiceImpl implements FeedBackService {

    private static FeedBackServiceImpl feedBackServiceImpl = new FeedBackServiceImpl();
    private static Logger LOG = Logger.getLogger(FeedBackServiceImpl.class);

    private FeedBackServiceImpl() {
    }

    public static FeedBackService getInstance() {
        return feedBackServiceImpl;
    }

    public void create(FeedBack feedBack) {
        Session session = HibernateUtils.currentSession();
        Transaction tx = null;
        boolean rollback = true;
        try {
            tx = session.beginTransaction();
            session.saveOrUpdate(feedBack);
            tx.commit();
            rollback = false;
        } catch (Exception exception) {
            LOG.warn("FeedBackServiceImpl", exception);

        } finally {
            if (rollback && tx != null) {
                tx.rollback();
            }
            HibernateUtils.closeSession();
        }
    }
}
