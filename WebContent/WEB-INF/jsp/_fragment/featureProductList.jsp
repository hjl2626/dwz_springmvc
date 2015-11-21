<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>

<div class="fp_list">
	<div class="box_t_l">
        <div class="box_t_r">
        	<div class="box_t_c">
            	Feature Product
            </div>
        </div>
    </div>
  	<div class="box_c_l">
    	<div class="box_c_r">
            <div class="box_c_c">
				
				<c:forEach begin="1" end="8">
                <dl class="item">
                    <dt>
                        <div class="img">
                            <a href="<c:out value='/product'/>"><img src="<c:url value='/styles/website/common/images/none80x80.gif'/>" /></a>
                        </div>
                    </dt>
                    <dd>
                        <div class="itemtitle">
                            <h1><a href="<c:out value='/product'/>">Gto Your Life's Purpose</a></h1>
                            <h2>Mauris eget diam. Integer nisl neque, tempus quis</h2>
                        </div>
                        <div class="itemprise">
                            <h2 class="ourprise"><span>Our Prise:</span>$808.00</h2>
                        </div>
                        <div class="itemdetail"><a href="<c:out value='/product'/>">More Detail</a></div>
                    </dd>
                </dl>
                </c:forEach>
   	
                <div class="clearBoth"></div>
            </div>
        </div>
    </div>
    <div class="box_b_l">
        <div class="box_b_r">
            <div class="box_b_c">
            </div>
        </div>
    </div>
</div>