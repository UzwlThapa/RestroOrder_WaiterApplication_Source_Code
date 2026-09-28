package de.greenrobot.dao.test;

import de.greenrobot.dao.AbstractDao;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractDaoTestStringPk<D extends AbstractDao<T, String>, T> extends AbstractDaoTestSinglePk<D, T, String> {
    public AbstractDaoTestStringPk(Class<D> daoClass) {
        super(daoClass);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.test.AbstractDaoTestSinglePk
    public String createRandomPk() {
        int len = this.random.nextInt(30) + 1;
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < len; i++) {
            char c = (char) (this.random.nextInt(25) + 97);
            builder.append(c);
        }
        return builder.toString();
    }
}
