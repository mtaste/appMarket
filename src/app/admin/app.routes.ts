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
	}, {
		path: 'mg/authOrg',
		loadChildren: 'app/admin/mg/auth-org/auth-org.module',
		name: 'AuthOrg'
	}]
}];
export default RouterModule.forChild(routes);