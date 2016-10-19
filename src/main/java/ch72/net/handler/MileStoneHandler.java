package ch72.net.handler;

import nablarch.core.log.Logger;
import nablarch.core.log.LoggerManager;
import nablarch.fw.ExecutionContext;
import nablarch.fw.Handler;

/**
 * Created by asato on 2016/10/19.
 */
public class MileStoneHandler implements Handler<Object, Object> {

    private static final Logger LOGGER = LoggerManager.get(MileStoneHandler.class);

    public void setMessage(String message) {
        this.message = message;
    }

    private String message = "";

    @Override
    public Object handle(Object o, ExecutionContext context) {
        LOGGER.logInfo("check down milestone:" + message);
        Object o1 = context.handleNext(o);
        LOGGER.logInfo("check up milestone:" + message);
        return o1;
    }
}
