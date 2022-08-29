# References

https://notiz.dev/

https://blog.bitsrc.io/10-useful-angular-features-youve-probably-never-used-e9e33f5c35a7

___

## HMR WITH NG
https://www.freakyjolly.com/angular-hot-module-replacement-technique-tutorial/


https://medium.com/echohub/implementation-of-hmr-hot-module-replacement-to-angular-project-f7bca523bd16

___
## **VALUE CHANGE BINDING IN DIFFERENT HTML THINGS**
```html
    <select class="form-select rounded-start-0" placeholder="Select an option" [(ngModel)]="selectedPole" (ngModelChange)="submit()">
	    <option disabled selected>Pôle Concerné...</option>
	    <option *ngFor="let pole of qcPolesList" value="{{pole}}">{{pole}}</option>
    </select>
```

___
## **Serve multiple Angular apps from single Nginx server in Development & Production mode with Docker**

https://medium.com/@kaushiksamanta23/serve-multiple-angular-apps-from-single-nginx-server-in-development-production-mode-with-docker-ae8d53b43283

___

￼￼ :rotating_light::rotating_light: IMPORTANT :rotating_light::rotating_light:
 @everyone   On a tous tendance à utiliser Angular de la même maniere à savoir pointer un service vers notre backend puis récupérer les infos sur notre component.ts avec un subscribe par exemple:
```ts
....
// On Injecte la dépendance ....
constructor(private orbitService: orbitService) {}

// Une méthode qui récupere nos données et qui sera surement appelé dans ngOnInit
private recuperation(): void {
  // Là notre subscribe habituel
  this.orcomService.getAllOrcom().subscribe(data => {
      this.data = data;
    }, error => {
      console.log(error);
  });
}
```

:x::scream: Mais cela crées une **MEMORY LEAK** souvent on s'en rends pas compte car nos application sont de petites tailles mais cela se ressent dès qu'on laisse l'appli tourner quelques heures car la mémoire de l'utilisateur commence à saturé et si on fait rien son PC peut complètement planter !!! :scream::x:

:warning: C'est le genre de chose qu'il ne faut surtout ** PAS NEGLIGER ** ! :warning:

:hugging: Cependant il existe des solutions pour s'en sortir :hugging:

:green_heart: Check it out :green_heart:
https://dev.to/theoklitosbam7/avoid-memory-leaks-in-angular-5gla


_Si vous savez pas de quoi je parle lisez l'article ! Un jour vous me remercierez lorsque vous aurez un bug pareil que le mien en pleine production dû au Memory Leak_ :tired_face: