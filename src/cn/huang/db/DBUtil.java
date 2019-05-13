package cn.huang.db;

import cn.huang.bean.Emp;

import java.util.HashMap;
import java.util.Map;

public class DBUtil {
    public static Map<String, Emp> map = new HashMap<String, Emp>();

    static {
        map.put("101", new Emp("101", "123456", "101", "开学", "请同学们与9月一号前来报道！"));
        map.put("102", new Emp("102", "123456", "102", "选课", "开始选课了！"));
        map.put("103", new Emp("103", "123456", "103", "竞选班委", "将于近期竞选班干部！"));
        map.put("104", new Emp("104", "123456", "104", "评选奖学金", "评选奖学金啦！"));
    }

    public static boolean selectEmpByAccountAndPassword(Emp emp) {
        boolean flag = false;
        for (String key : map.keySet()) {
            Emp e = map.get(key);
            if (emp.getUserName().equals(e.getUserName()) && emp.getPassWord().equals(e.getPassWord())) {
                flag = true;
                break;
            }
        }
        return flag;
    }
}
