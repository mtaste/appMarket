import {
	NgModule
} from "@angular/core";
import {
	CommonModule
} from "@angular/common";
import {
	UserComponent
} from "./user.component";

import {
	UserLoginComponent
} from "./login/user-login.component";

import userRoutes from './user.routes';
@NgModule({
	imports: [CommonModule, userRoutes],
	declarations: [UserComponent, UserLoginComponent]
})
export default class UserModule {}