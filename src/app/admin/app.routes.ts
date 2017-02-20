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
	}, {
		path: 'sys/orgDefine',
		loadChildren: 'app/admin/sys/org-define/org-define.module',
		name: 'OrgDefine'
	}, {
		path: 'personnel/mgUser',
		loadChildren: 'app/admin/personnel/mg-user/mg-user.module',
		name: 'MgUser'
	}, {
		path: 'mg/org',
		loadChildren: 'app/admin/mg/org/org.module',
		name: 'MgOrg'
	}]
}];
export default RouterModule.forChild(routes);