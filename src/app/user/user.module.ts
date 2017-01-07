import {
	CommonModule,
	BrowserModule,
	NgModule,
	FormsModule,
	HttpModule,
	JsonpModule
} from '../shared/index';
import {
	UserService
} from "./user.service";
import {
	UserComponent
} from "./user.component";

import {
	UserLoginComponent
} from "./login/user-login.component";
import {
	PanelModule
} from 'primeng/primeng';
import userRoutes from './user.routes';

@NgModule({
	imports: [
		FormsModule,
		HttpModule,
		JsonpModule,
		CommonModule,
		PanelModule,
		userRoutes
	],
	declarations: [UserComponent, UserLoginComponent],
	providers: [UserService]
})
export default class UserModule {}