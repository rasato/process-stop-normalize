package ch72.net.handler;

import nablarch.core.log.Logger;
import nablarch.core.log.LoggerManager;
import nablarch.fw.ExecutionContext;
import nablarch.fw.Handler;
import nablarch.fw.Result;
import nablarch.fw.handler.ProcessStopHandler;

/**
 * Created by asato on 2016/10/19.
 */
public class ProcessStopCatchHandler implements Handler<Object, Object> {

    /** ロガー。 */
    private static final Logger LOGGER = LoggerManager.get(ProcessStopCatchHandler.class);
    @Override
    public Object handle(Object o, ExecutionContext context) {

        Object next = null;
        try {
            LOGGER.logInfo("PSC start");
            next = context.handleNext(o);
            LOGGER.logInfo("PSC finish");
        } catch (ProcessStopHandler.ProcessStop e) {
            LOGGER.logInfo("catch ProcessStopHandle");
            //throw e;
        }
        return new Result.Success();


    }
}
