on the survey page you can give grades 1-10 to the subjects
when you inspect the table on the page, you see that the form has onChange='javascript:this.form.submit(); for the SELECT.

if you chnge a value and then select it, it will be submitted (POST) and u get the flag

				<form action="#" method="post">
					<input type="hidden" name="sujet" value="2">
					<SELECT name="valeur" onChange='javascript:this.form.submit();'>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
					</SELECT>
				</form>


Broken Access Control / Insufficient Input Validation

FIX: validate values on the server side (backend). it just shouldnt take any values POSTed by frontend.

if (value < 1 | value  > 10)
    reject request