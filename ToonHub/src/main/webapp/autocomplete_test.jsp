<%@page import="java.util.ArrayList"%>
<%@page import="model.WebtoonDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<%WebtoonDAO dao = new WebtoonDAO(); 
ArrayList<String> title_list = dao.Searchname();
System.out.println(title_list);%>
        <!-- body �κ� -->
        <input id="searchInput" type="text" name = "text">

        <script>
            $(function() {    //ȭ�� �� �߸� ����
                var searchSource = <%=title_list%>; // �迭 ���·� 
                $("#searchInput").autocomplete({  //���� ���ø�Ʈ ����
                    source : searchSource,    // source �� �ڵ� �ϼ� ���
                    select : function(event, ui) {    //������ ���ý�
                        console.log(ui.item);
                    },
                    focus : function(event, ui) {    //��Ŀ�� ����
                        return false;//�ѱ� ���� ���뵵�� ����
                    },
                    minLength: 1,// �ּ� ���ڼ�
                    autoFocus: true, //ù��° �׸� �ڵ� ��Ŀ�� �⺻�� false
                    classes: {    //�� �𸣰���
                        "ui-autocomplete": "highlight"
                    },
                    delay: 2000,    //�˻�â�� ���� ������ ���� autocomplete â �� �� ���� ������ �ð�(ms)
        //            disabled: true, //�ڵ��ϼ� ��� ����
                    position: { my : "right top", at: "right bottom" },    //�� �𸣰���
                    close : function(event){    //�ڵ��ϼ�â �ݾ����� ȣ��
                        console.log(event);
                    }
                });
                
            });
        </script>
</body>
</html>