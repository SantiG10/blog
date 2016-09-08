# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "ajax:success", "form#comments-form", (ev,data)->
	console.log data
	$(this).find("textarea").val("")
	$("#comments-box").append("
		<div class='row'>
	    <div class='col-xs-1 col-md-1'>
	      <div class='box'>
	        <img src='#{data.user.avatar}'>
	      </div>
	    </div>
			<div class='col-xs-11 col-md-10'>
				<div class='box'>
					#{data.body}
				</div>
				<div class='text-rigth top-space2 be-small'>
					Escrito por: #{data.user.email }
				</div>
			</div>
		</div>")
$(document).on "ajax:error", "form#comments-form", (ev,data)->
	console.log data
