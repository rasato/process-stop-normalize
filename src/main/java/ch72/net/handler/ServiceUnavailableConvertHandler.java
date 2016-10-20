package ch72.net.handler;

import nablarch.core.ThreadContext;
import nablarch.core.log.Logger;
import nablarch.core.log.LoggerManager;
import nablarch.fw.ExecutionContext;
import nablarch.fw.Handler;
import nablarch.fw.Result;
import nablarch.fw.results.ServiceUnavailable;

/**
 * convert {@javadoc ServiceUnavailable} to {@javadoc Success}
 * Created by asato on 2016/10/19.
 */
public class ServiceUnavailableConvertHandler implements Handler<Object, Object> {

    /** ロガー。 */
    private static final Logger LOGGER = LoggerManager.get(ServiceUnavailableConvertHandler.class);
    @Override
    public Object handle(Object o, ExecutionContext context) {

        Object next = null;
        try {
            next = context.handleNext(o);
        } catch (ServiceUnavailable e) {
            LOGGER.logInfo(e.getMessage() + "request id = [" + ThreadContext.getRequestId() + "]");
        }
        return new Result.Success();
    }
}
