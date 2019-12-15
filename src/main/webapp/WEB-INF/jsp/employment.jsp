<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>专业介绍</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .page{
            padding: 0 200px;
        }
        .sidebar{
            padding: 100px 0;
        }
        .sidebar .nav h3{
            background: #3092cd;
            color: white;
            padding: 10px 20px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            margin-top: 0;
            margin-bottom: 0;
        }
        .sidebar ul{
            box-shadow: 0 0 25px rgba(0, 0, 0, 0.1);
        }
        .page-body .img{
            text-align: center;
        }
        .article img{
            weight:100px;
            height: 300px;

        }
        .page-body p{
            text-indent: 2em;
        }
    </style>
</head>
<body>
<c:if test="${admin==null}">
    <%@include file="/WEB-INF/jsp/common/header.jsp"%>
</c:if>
<c:if test="${admin!=null}">
    <%@include file="/WEB-INF/jsp/common/headerAdmin.jsp"%>
</c:if>

<div class="welcome">
    <div class="jumbotron">
        <div class="container">
            <h1>就业指南</h1>
            <p>为成功的人生奠基</p>
        </div>
    </div>
</div>

<div class="page">
    <div class="article col-md-12">
        <div class="page-header">
            <h1>就业指南</h1>
        </div>
        <div class="page-body">
            <p><b>1、请你自我介绍一下自己好吗？</b></p>
            <p>回答提示：一般人回答这个问题过于平常，只说姓名、年龄、爱好、工作经验，这些在简历上都有。其实，企业最希望知道的是求职者能否胜任工作，包括：最强的技能、最深入研究的知识领域、个性中最积极的部分、做过的最成功的事，主要的成就等，这些都可以和学习无关，也可以和学习有关，但要突出积极的个性和做事的能力，说得合情合理企业才会相信。企业很重视一个人的礼貌，求职者要尊重考官，在回答每个问题之后都说一句“谢谢”，企业喜欢有礼貌的求职者。</p>
            <p>◆为人热情大方，乐观向上，勤奋刻苦，能吃苦耐劳，严于律己，适应性强</p>
            <p>◆做事认真负责，沉着冷静，严谨稳重，有很强的责任感，能承受较强的工作压力</p>
            <p>◆具备良好的团队合作，语言表达，组织协调能力，善于与别人沟通，工作中大胆创新，能做到虚心向别人学习</p>

            <p><b>2、你觉得你个性上最大的优点是什么？</b></p>
            <p>回答提示：沉着冷静、条理清楚、立场坚定、顽强向上、乐于助人和关心他人、适应能力和幽默感、乐观和友爱。我在北大青鸟经过一到两年的培训及项目实战，加上实习工作，使我适合这份工作。</p>

            <p><b>3、说说你最大的缺点？</b></p>
            <p>回答提示：这个问题企业问的概率很大，通常不希望听到直接回答的缺点是什么等，如果求职者说自己小心眼、爱忌妒人、非常懒、脾气大、工作效率低，企业肯定不会录用你。绝对不要自作聪明地回答“我最大的缺点是过于追求完美”，有的人以为这样回答会显得自己比较出色，但事实上，他已经岌岌可危了。企业喜欢求职者从自己的优点说起，中间加一些小缺点，最后再把问题转回到优点上，突出优点的部分，企业喜欢聪明的求职者。</p>

            <p><b>4、你对薪资的要求？</b></p>
            <p>回答提示：如果你对薪酬的要求太低，那显然贬低自己的能力；如果你对薪酬的要求太高，那又会显得你分量过重，公司受用不起。一些雇主通常都事先对求聘的职位定下开支预算，因而他们第一次提出的价钱往往是他们所能给予的最高价钱，他们问你只不过想证实一下这笔钱是否足以引起你对该工作的兴趣。

                回答样本一：我对工资没有硬性要求，我相信贵公司在处理我的问题上会友善合理。我注重的是找对工作机会，所以只要条件公平，我则不会计较太多。</p>
            <p></p>
            <p>回答样本二：我受过系统的软件编程的训练，不需要进行大量的培训，而且我本人也对编程特别感兴趣。因此，我希望公司能根据我的情况和市场标准的水平，给我合理的薪水。

                回答样本三：如果你必须自己说出具体数目，请不要说一个宽泛的范围，那样你将只能得到最低限度的数字。最好给出一个具体的数字，这样表明你已经对当今的人才市场作了调查，知道像自己这样学历的雇员有什么样的价值。</p>
            <p></p>

        </div>
    </div>
</div>
<style>
    .whiteboard{
        height: 600px;
    }
</style>
<div class="whiteboard"></div>


<%@include file="/WEB-INF/jsp/common/footer.jsp"%>


<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

</body>
</html>
