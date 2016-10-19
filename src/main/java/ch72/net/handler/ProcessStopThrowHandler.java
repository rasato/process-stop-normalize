package ch72.net.handler;

import nablarch.core.log.Logger;
import nablarch.core.log.LoggerManager;
import nablarch.fw.ExecutionContext;
import nablarch.fw.Handler;
import nablarch.fw.handler.ProcessStopHandler;

/**
 * Created by asato on 2016/10/19.
 */
public class ProcessStopThrowHandler implements Handler<Object, Object> {
    /** ロガー。 */
    private static final Logger LOGGER = LoggerManager.get(ProcessStopThrowHandler.class);
    @Override
    public Object handle(Object o, ExecutionContext context) {
        LOGGER.logInfo("throw Process stop");
        throw new ProcessStopHandler.ProcessStop(11);
    }
}
