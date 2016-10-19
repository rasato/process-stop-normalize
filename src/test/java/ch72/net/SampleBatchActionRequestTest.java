package ch72.net;

import org.junit.Test;

import ch72.net.test.BatchRequestTestBase;

/**
 * {@link SampleBatch}のテストクラス。
 *
 * @deprecated TODO 疎通確認完了後、削除して下さい。
 */
public class SampleBatchActionRequestTest extends BatchRequestTestBase {


    /** 正常終了のテストケース。 */
    @Test
    public void testNormalEnd() {
        execute();
    }

}
