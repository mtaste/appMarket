import {
	RouterModule
} from "@angular/router";
import {
	AppComponent
} from './app.component';
const routes = [{
	path: '',
	component: AppComponent,
	children: [{
		path: ""
	}, {
		path: 'mg/authDefine',
		loadChildren: 'app/admin/mg/auth-define/auth-define.module',
		name: 'AuthDefine'
	}]
}];
export default RouterModule.forChild(routes);