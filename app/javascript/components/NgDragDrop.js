import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { DemoComponent } from "./components/demo-component";
import { NgDragDropModule } from 'ng-drag-drop';


@NgModule({
  imports: [
      BrowserModule,
      NgDragDropModule.forRoot()
  ],
  declarations: [DemoComponent],
  bootstrap: [DemoComponent]
})
export class AppModule {}
