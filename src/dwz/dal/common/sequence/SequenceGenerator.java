package dwz.dal.common.sequence;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import dwz.common.component.threadpool.ThreadPool;
import dwz.dal.common.sequence.dao.DalSequenceDO;
import dwz.dal.common.sequence.dao.IdSequenceDao;

/**
 * <strong>Title : SequenceGenerator<br></strong>
 * <strong>Description : </strong>
 * SequenceGenerator, 数据库序列生成器<br> 
 * <strong>Create on : 2011-10-31<br></strong>
 * <p>
 * <strong>Copyright (C) Ecointel Software Co.,Ltd.<br></strong>
 * <p>
 * @author peng.shi peng.shi@ecointellects.com<br>
 * @version <strong>Ecointel v1.0.0</strong><br>
 * <br>
 * <strong>修改历史:</strong><br>
 * 修改人		修改日期		修改描述<br>
 * -------------------------------------------<br>
 * <br>
 * <br>
 */
public class SequenceGenerator {

	private static Map<String, SequenceGenerator> generators = new HashMap<String, SequenceGenerator>();

	@Autowired
	private static IdSequenceDao dalSequenceDao;

	private static ThreadPool threadPool = new ThreadPool(20, "SequenceGenerator");

	private String moduleId;

	private long updateBatchSize = 1;

	private long batchCount = 0;

	private static final long DEFAULT_STEP_VALUE = 1L;

	private static final long DEFAULT_INIT_VALUE = 0L;

	private long value;

	private SequenceGenerator(String moduleId, long updateBatchSize) {
		if (moduleId == null || moduleId.equals("")) {
			throw new IllegalArgumentException("ModuleID can not be null.");
		}
		if (updateBatchSize < 1) {
			throw new IllegalArgumentException("updateBatchSize can not less than 1.");
		}

		this.moduleId = moduleId;
		this.updateBatchSize = updateBatchSize;
		this.value = DEFAULT_INIT_VALUE;

		DalSequenceDO dalSequenceDO = dalSequenceDao.load(moduleId);
		if (dalSequenceDO != null) {
			value = dalSequenceDO.getSequenceValue();
		} else {
			dalSequenceDO = new DalSequenceDO();
			dalSequenceDO.setSequenceKey(moduleId);
			dalSequenceDO.setSequenceValue(value);
			dalSequenceDao.insert(dalSequenceDO);
		}
	}

	public static SequenceGenerator getInstance(String moduleId, long batchSize) {
		if (!generators.containsKey(moduleId)) {
			synchronized (generators) {
				if (!generators.containsKey(moduleId)) {
					SequenceGenerator generator = new SequenceGenerator(moduleId, batchSize);
					generators.put(moduleId, generator);
					if (!threadPool.running()) {
						threadPool.start();
					}
				}
			}
		}
		return generators.get(moduleId);
	}

	public synchronized long nextId() {
		if (batchCount == 0) {
			addSequence(updateBatchSize);
			batchCount = updateBatchSize;
			batchCount--;
			value = value + DEFAULT_STEP_VALUE;
			return value;
		} else {
			batchCount--;
			value = value + DEFAULT_STEP_VALUE;
			return value;
		}
	}

	private void addSequence(long stepValue) {
		final DalSequenceDO seqDo = new DalSequenceDO();
		seqDo.setSequenceKey(moduleId);
		seqDo.setSequenceValue(value + stepValue);
		
		try {
			threadPool.execute(new Runnable() {
				public void run() {
					try {
						/**
						 * 在另起一个线程里执行，目的是为了防止数据库事务嵌套，影响数据库操作。
						 */
						dalSequenceDao.update(seqDo);
					} catch (Throwable e) {
						e.printStackTrace();
					} finally {
						synchronized (seqDo) {
							seqDo.notify();
						}
					}
				}
			});
			synchronized (seqDo) {
				seqDo.wait();
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

}
