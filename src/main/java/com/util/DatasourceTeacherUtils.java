package com.util;

import com.entity.Graduate;
import com.entity.Teacher;
import com.entity.Title;

import java.util.List;
import java.util.stream.Collectors;

public class DatasourceTeacherUtils {
    private static List<Title> titles;
    private static List<Teacher> teachers;
    private static List<Graduate> graduates;

    static {
        Title t1=new Title(1, "教授");
        Title t2=new Title(2, "副教授");
        Title t3=new Title(3, "讲师");
        titles=List.of(t1,t2,t3);

        Teacher teacher1=new Teacher(1,"王波", "优秀教师", t1, "/images/t1.jpeg");
        Teacher teacher2=new Teacher(2,"罗嗣卿", "学生最喜欢的老师", t1, "/images/t2.jpg");
        Teacher teacher3=new Teacher(3, "李莉", "十佳教师", t1, "/images/t3.jpg");
        Teacher teacher4=new Teacher(4, "张锡英", "主讲：数据库、数据结构", t2, "/images/t4.jpg");
        Teacher teacher5=new Teacher(5, "李琰", "主讲：系统分析与设计、需求分析", t3, "/images/t5.jpg");
        Teacher teacher6=new Teacher(6, "赵玉茗", "主讲：数字逻辑、软件体系结构", t2, "/images/t4.jpg");
        Teacher teacher7=new Teacher(7, "边继龙", "主讲：数据库系统原理", t3, "/images/t3.jpg");
        teachers=List.of(teacher1,teacher2,teacher3,teacher4,teacher5,teacher6,teacher7);

        Graduate graduate1=new Graduate(1, "毕业生一号", "/images/t1.jpeg", "这是优秀的毕业生1号");
        Graduate graduate2=new Graduate(2, "毕业生二号", "/images/t1.jpeg", "这是优秀的毕业生2号");
        Graduate graduate3=new Graduate(3, "毕业生三号", "/images/t1.jpeg", "这是优秀的毕业生3号");
        Graduate graduate4=new Graduate(4, "毕业生四号", "/images/t1.jpeg", "这是优秀的毕业生4号");
        Graduate graduate5=new Graduate(5, "毕业生五号", "/images/t1.jpeg", "这是优秀的毕业生5号");
        Graduate graduate6=new Graduate(6, "毕业生六号", "/images/t1.jpeg", "这是优秀的毕业生6号");
        graduates=List.of(graduate1,graduate2,graduate3,graduate4,graduate5,graduate6);

    }

    public static List<Title> getTitles(){return titles;}

    public static List<Teacher> getTeachers(){return teachers;}

    public static List<Graduate> getGraduates(){return graduates;}

    public static Teacher getTeacher(int id) {
        return teachers.stream()
                .filter(t -> t.getId() == id)
                .findFirst()
                .orElse(null);
    }

    public static Graduate getGraduate(int id) {
        return graduates.stream()
                .filter(t -> t.getId() == id)
                .findFirst()
                .orElse(null);
    }

    public static List<Teacher> getTeacherByTitle(int id) {
        return (List<Teacher>) teachers.stream()
                .filter(t -> t.getTitle().getId() == id)
                .collect(Collectors.toList());
    }
}
