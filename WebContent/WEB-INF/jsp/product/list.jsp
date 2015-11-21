<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>

<c:set var="website" value="${info:contextWebsite()}"></c:set>

<div id="content">
    <ul id="bread">
	    <li><a href="<c:out value='/'/>">Home</a></li>
	    <li><a href="#">Living Room Furniture</a></li>
    </ul>
	<div class="catinfo">
	    <div class="box_t_l">
	        <div class="box_t_r">
	        	<div class="box_t_c">
	            </div>
	        </div>
	    </div>
	    <div class="box_c_l">
	    	<div class="box_c_r">
	            <div class="box_c_c">
	    			<div class="title"><h1>PCs Notebooks</h1></div>
	                <div class="img"><img src="/styles/website/${website.template}/themes/${website.theme}/images/pc.gif"></div>
	    			<div class="info">Mauris eget diam. Integer nisl neque, tempus quis, varius sed, suscipit sed, augue. Integer nisl neque, tempus quis, varius sed, suscipit sed, augue.</div>
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
	
	<div class="subcatlist">
	    <div class="box_t_l">
	        <div class="box_t_r">
	        	<div class="box_t_c">
	            </div>
	        </div>
	    </div>
	    <div class="box_c_l">
	    	<div class="box_c_r">
	            <div class="box_c_c">
	            <c:forEach begin="1" end="8" varStatus="s">
	                <div class="item">
	            		<div class="img"><img src="catalog//styles/website/${website.template}/themes/${website.theme}/images/pc.gif"></div>
	            		<div class="itemtitle"><a href="#">Category ${s.index}</a></div>
	        		</div>
	        	</c:forEach>
					<div class="clearBoth">&nbsp;</div>
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
	
	<div class="productlist">
	    <div class="box_t_l">
	        <div class="box_t_r">
	        	<div class="box_t_c">
	            </div>
	        </div>
	    </div>
	    <div class="box_c_l">
	    	<div class="box_c_r">
	            <div class="box_c_c">
	                <!--list page ,product List container/-->
	                <div class="toolbar">
	                    <div class="view">view
	                        <input class="listview_btnselected" name="viewBtn" rel="listview" type="button">
	                        <input class="gridview_btn" name="viewBtn" rel="gridview" type="button">
	                        <input class="textview_btn" name="viewBtn" rel="textview" type="button">
	                    </div>
	                    <div class="sort_form">
	                        <label>Sort By</label>
	                        <select name="sortBy"><option>by Prise</option><option>by Brand</option></select>
	                    </div>
	                    <div class="page_turning">
	                        <a href="#"><span class="Btn_first">&nbsp;</span>First</a>
	                        <a href="#"><span class="Btn_previous">&nbsp;</span>Previous</a>
	                        <a href="#" class="selected">1</a>
	                        <a href="#">2</a>
	                        <a href="#">3</a>
	                        <a href="#">4</a>
	                        <a href="#">5</a>
	                        <a href="#">Next<span class="Btn_next">&nbsp;</span></a>
	                        <a href="#">Last<span class="Btn_last">&nbsp;</span></a>
	                    </div>
	        		</div>
	                <div class="j-view-box listview">
	                
	                	<c:forEach begin="1" end="20" varStatus="s">
	                    <dl class="item">
	                        <dt>
	                            <div class="img">
	                                <a href="<c:out value='/product/${s.index}'/>"><img src="/styles/website/${website.template}/themes/${website.theme}/images/pc.gif"></a>
	                            </div>
	                            <div class="imgb"><img src="/styles/website/${website.template}/themes/${website.theme}/images/pc.gif"></div>
	                        </dt>
	                        <dd>
	                            <div class="itemtitle">
	                                <h1><a href="<c:out value='/product/${s.index}'/>">A New Earth: Awakeningto Your Life's PurposeA New Earth: Awakeningto Your Life's Purpose</a></h1>
	                                <h2>Mauris eget diam. Integer nisl neque, tempus quis, varius sed, 
	                                    suscipit sed, augue. Integer nisl neque, tempus quis, varius sed, suscipit sed, augue.</h2>
	                            </div>
	                            <div class="itemprise">
	                                <h1 class="listprise"><span>List Prise:</span>$808.00</h1>
	                                <h2 class="ourprise"><span>Our Prise:</span>$808.00</h2>
	                                <h3 class="onsaleprise"><span>On Sale:</span>$808.00</h3>
	                                <h3 class="yourprise"><span></span>$808.00</h3>
	                                <h4 class="yoursave"><span>Your save:</span>$30.00 (30.00%)</h4>
	                                <h5 class="callprise">Call for Price</h5>
	                            </div>
	                            <div class="shipmessage">Free Shipping</div>
	                            <div class="clearBoth">&nbsp;</div>
	                        </dd>
	                	</dl>
	                    </c:forEach>
	                    
	                    <div class="clearBoth"></div>
	                </div>
	                <div class="toolbar_bottom">
	                    <div class="page_turning">
	                        <a href="#"><span class="Btn_first">&nbsp;</span>First</a>
	                        <a href="#"><span class="Btn_previous">&nbsp;</span>Previous</a>
	                        <a href="#" class="selected">1</a>
	                        <a href="#">2</a>
	                        <a href="#">3</a>
	                        <a href="#">4</a>
	                        <a href="#">5</a>
	                        <a href="#">Next<span class="Btn_next">&nbsp;</span></a>
	                        <a href="#">Last<span class="Btn_last">&nbsp;</span></a>
	                    </div>
	        		</div>
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
</div>