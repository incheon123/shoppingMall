<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../css/basket.css">
<title>��ٱ���</title>
</head>
<body>
	<jsp:include page="./modules/header.jsp" />
    <section class="cart">
        <div class="cart__information">
            <ul>
                <li>��ٱ��� ��ǰ�� �ִ� 30�ϰ� ����˴ϴ�.</li>
                <li>����, �ɼ� �� ������ ����� ��� �ֹ��� �Ұ��� �� �ֽ��ϴ�.</li>
                <li>������� ��ǰ�� �Ǹ��� ���� ������ ���� ������� ���ΰ� ����� �� ������ �ֹ� �� �� �ٽ� Ȯ���� �ֽñ� �ٶ��ϴ�.</li>
            </ul>
        </div>
        <table class="cart__list">
            <form>
                <thead>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td colspan="2">��ǰ����</td>
                        <td>�ɼ�</td>
                        <td>��ǰ�ݾ�</td>
                        <td>��ۺ�</td>
                    </tr>
                </thead>
                <tbody>
                    <tr class="cart__list__detail">
                        <td><input type="checkbox"></td>
                        <td><img src="image/keyboard.jpg" alt="magic keyboard"></td>
                        <td><a href="#">���� ���� �귣�彺���</a><span class="cart__list__smartstore"> ����Ʈ�����</span>
                            <p>Apple ���� Ű���� - �ѱ���(MK2A3KH/A)</p>
                            <sapn class="price">116,62��</sapn><span
                                style="text-decoration: line-through; color: lightgray;">119,000</span>
                        </td>
                        <td class="cart__list__option">
                            <p>�𵨸� : Ű���� - �ѱ��� MK2A3KH/A / 1��</p>     
                            <button class="cart__list__optionbtn">�ֹ����� �߰�/����</button>
                        </td>
                        <td><span class="price">116,620��</span><br>
                            <button class="cart__list__orderbtn">�ֹ��ϱ�</button>
                        </td>
                        <td>����</td>
                    </tr>
                    <tr class="cart__list__detail">
                        <td style="width: 2%;"><input type="checkbox"></td>
                        <td style="width: 13%;">
                            <img src="image/mouse.jpg" alt="magic mouse">
                        </td>
                        <td style="width: 27%;"><a href="#">��ǻ��</a><span class="cart__list__smartstore"> ����Ʈ�����</span>
                            <p>[����] Magic Mouse [MK2E3KH/A]</p>
                            <span class=" price">88,900��</span>
                        </td>
                        <td class="cart__list__option" style="width: 27%;">
                            <p>��ǰ �ֹ� ����: 1��</p>
                            <button class="cart__list__optionbtn">�ֹ����� �߰�/����</button>
                        </td>
                        <td style="width: 15%;"><span class="price">88,900��</span><br>
                            <button class="cart__list__orderbtn">�ֹ��ϱ�</button>
                        </td>
                        <td style="width: 15%;">����</td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="3"><input type="checkbox"> <button class="cart__list__optionbtn">���û�ǰ ����</button>
                            <button class="cart__list__optionbtn">���û�ǰ ��</button>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tfoot>
            </form>
        </table>
        <div class="cart__mainbtns">
            <button class="cart__bigorderbtn left">���� ����ϱ�</button>
            <button class="cart__bigorderbtn right">�ֹ��ϱ�</button>
        </div>
    </section>
    <jsp:include page="./modules/footer.jsp" />
</body>
</html>