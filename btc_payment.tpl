<div class="panel">
	<div class="panel-body pagination2">
		<div class="row">
			<div class="alert alert-info">
			<span style="align-content: center"> This page will redirect you to site outside of {$site->title} to make your payment
			<br>
			If, for some reason, your account isn't updated automaticaly, please send us an email or use our contact form to inform us so we can fix the issue.</span>
			</div>
		</div>
	</div>
	<table class="data table table-condensed responsive-utilities jambo-table">
		{foreach $donation as $donate}
            {{Form::open(['url' => 'btc_payment?action=submit'])}}
				<thead>
				<tr>
					<th>{$donate->name} ({$donate->donation}$)</th>
				</tr>
				</thead>
				<td>
                    {{Form::hidden('price', {$donate->donation})}}
                    {{Form::hidden('role', {$donate->id})}}
                    {{Form::hidden('rolename', {$donate->name})}}
                    {{Form::hidden('addyears', {$donate->addyears})}}
                    {{Form::submit('Pay with BTC', ['class' => 'btn btn-primary'])}}
				</td>
			{{Form::close()}}
		{/foreach}
	</table>
</div>
