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
}];

export default RouterModule.forRoot(routes);