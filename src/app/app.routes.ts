import {
	RouterModule
} from "@angular/router";
const routes = [{
	path: '',
	loadChildren: 'app/home/home.module'
}, {
	path: 'contact',
	loadChildren: 'app/contact/contact.module',
	name: 'Contact'
}, {
	path: 'user',
	loadChildren: 'app/user/user.module',
	name: 'User'
}, {
	path: 'apps/:id',
	loadChildren: 'app/apps/apps.module',
	name: 'Apps'
}];

function GetRoters() {
	return routes;
}
export default RouterModule.forRoot(GetRoters());