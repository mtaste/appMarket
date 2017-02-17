import {
	OrgRegisterComponent
} from "./register/org-register.component";
import {
	RouterModule
} from "@angular/router";
const routes = [{
	path: 'register',
	component: OrgRegisterComponent
}];
export default RouterModule.forChild(routes);