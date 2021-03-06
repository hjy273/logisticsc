<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>云仓管理系统-修改配送单</title>
	<script type="text/javascript" src="/logisticsc/Clound/js/yc_public.js"></script>
	<script type="text/javascript" src="/logisticsc/Clound/js/JoinElseJs.js"></script>
	<script type="text/javascript" src="/logisticsc/Clound/js/DeliveryOrder/DeliveryOrder.js"></script>
	<link rel="stylesheet" href="/logisticsc/Clound/assets/css/bootstrap-multiselect.css" />
	<link rel="stylesheet" href="/logisticsc/Clound/assets/css/daterangepicker.css" />
	<link rel="stylesheet" href="/logisticsc/Clound/assets/css/bootstrap-datetimepicker.css" />
	<script src="/logisticsc/Clound/assets/js/date-time/moment.js"></script>
	<script src="/logisticsc/Clound/assets/js/date-time/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript">
	$(function($) {
		deliveryCharge_.initSelect("#joinerId");
		//deliveryCharge_.initList();
		deliveryCharge_.initDate();
		deliveryCharge_.init();
	});
	</script>
</head>
<body>
<div class="widget-box">
	<div class="widget-header widget-header-blue widget-header-flat">
		<h4 class="widget-title lighter">配送单</h4>
	</div>
	<div class="widget-body">
		<div class="widget-main">
			<div class="step-content pos-rel">
			<form class="form-horizontal" id="add_delivery_order_form"  role="form">
					<div class="step-pane active" data-step="1">
							<!-- input标签 -->
							<div class="form-group"><label class="col-sm-3 control-label no-padding-right" for="consigneeName">选择经销商 </label>
								<div class="col-sm-9">
									<select group="val"  name="joinerId" valited="required" id=joinerId class="select2-container select2-allowclear select2 tag-input-style" data-placeholder="点击选择...">
										<option value="1">小美</option>
										<option value="2">大东</option>
										<option value="3">罗静</option>
										<option value="3">小米</option>
										<option value="5">小明</option>
									</select>
								</div>
							</div>
					</div>
					<div class="step-pane" data-step="2">
						<!-- 选择货物 -->
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-top" for="goodsId"> 选择货物 </label>

							<div class="col-sm-8">
								<!-- #section:plugins/input.duallist -->
								<select multiple="multiple"  valited="required"  size="10" id="goodsId">
									<!-- 获取 -->
								</select>

								<!-- /section:plugins/input.duallist -->
								<div class="hr hr-16 hr-dotted"></div>
							</div>
						</div>
					</div>
					<div class="step-pane" data-step="3"  >
						<div class="form-group" id="select_num_" >
							<!-- 等待加载选择货物数量界面  -->
						</div>
					</div>
					<div class="step-pane " data-step="4">
						<!-- input标签 -->
						<div class="form-group"><label class="col-sm-3 control-label no-padding-right" for="consigneeName">客户姓名 </label>
							<div class="col-sm-9">
								<input type="text" group="val" valited="required" name="consigneeName" required="true" placeholder="客户姓名" class="col-xs-10 col-sm-5" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right" for="consigneePhone">客户电话 </label>
							
								<div class="col-sm-9">
									<input type="text" group="val" valited="required,phone" name="consigneePhone" required="true"  placeholder="客户电话" class="col-xs-10 col-sm-5" />
								</div>									 
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right" for="consigneeAddr">客户地址</label>
							<div class="col-sm-9">
								<input type="text" group="val" valited="required" name="consigneeAddr"  placeholder="客户地址" class="col-xs-10 col-sm-5" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right" for="installCost">安装费用</label>
							<div class="col-sm-9">
								<input type="text" group="val" valited="required,number" name="installCost"  placeholder="安装费用" class="col-xs-10 col-sm-5" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right" for="subscribeTime">预约配送时间</label>
							<!-- #section:plugins/date-time.datetimepicker -->
								
							 <div class="col-sm-9">
								<input id="subscribeTime" group="val" name="subscribeTime" valited="required,date"  type="text" placeholder="请选择配送时间" data-date-format="YYYY-MM-DD HH:mm:ss" class="col-xs-10 col-sm-5" />
							</div> 
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right" for="deliveryCost">配送费用</label>
							
							<div class="col-sm-9">
								<input type="text" group="val" valited="required" name="deliveryCost"  required="true" placeholder="配送费用" class="col-xs-10 col-sm-5" />
							</div>
						</div>
					</div>
					<!-- 下一页开始 -->
					<!-- 下一页结束 -->
				</form>
			</div>
			<div class="wizard-actions">
				<!-- #section:plugins/fuelux.wizard.buttons -->
				<a onclick="deliveryCharge_.prevSubmit();" disabled="disabled" class="btn  btn-prev" data-last="Finish">
					<i class="ace-icon fa fa-arrow-left"></i>
					上页
				</a>
				<a onclick="deliveryCharge_.addSubmit('add_delivery_order_form');" class="btn btn-success btn-next" data-last="Finish">
					下页
					<i class="ace-icon fa fa-arrow-right icon-on-right"></i>
				</a>

				<!-- /section:plugins/fuelux.wizard.buttons -->
			</div>
							
		</div>
	</div>
</div>

</body>
</html>