
/*
 * Scene4
 * Created by Eqela Studio 2.0b7.4
 */

public class S4 : SEScene
{
	SESprite logcolor1;
	SESprite logcolor2;
	SESprite logcolor3;
	SESprite logcolor4;
	SESprite text;

    public void initialize(SEResourceCache rsc)
 {
        base.initialize(rsc);
        rsc.prepare_font("myfont", "arial bold color=white", 25);
        add_entity(SESpriteEntity.for_color(Color.instance("#FF6633"), get_scene_width(), get_scene_height()));
        text = add_sprite_for_text(" ", "myfont");   
        text.set_text("SCENE4");
        text.move(0.45*get_scene_width(),0.45*get_scene_height());



        logcolor1=add_sprite_for_color(Color.instance("white"), get_scene_width()*0.12, get_scene_height()*0.07);
        logcolor1.move(0.75*get_scene_width(),0.68*get_scene_height());
        text = add_sprite_for_text(" ", "myfont");   
        text.set_text("Main");
        text.move(0.77*get_scene_width(),0.70*get_scene_height());



 
        logcolor2=add_sprite_for_color(Color.instance("#D2691E"), get_scene_width()*0.12, get_scene_height()*0.07);
        logcolor2.move(0.75*get_scene_width(),0.75*get_scene_height());
        text = add_sprite_for_text(" ", "myfont");   
        text.set_text("SCENE1");
        text.move(0.77*get_scene_width(),0.77*get_scene_height());



        logcolor3=add_sprite_for_color(Color.instance("#8B008B"), get_scene_width()*0.12, get_scene_height()*0.07);
        logcolor3.move(0.75*get_scene_width(),0.82*get_scene_height());
        text = add_sprite_for_text(" ", "myfont");   
        text.set_text("SCENE2");
        text.move(0.77*get_scene_width(),0.84*get_scene_height());




        logcolor4=add_sprite_for_color(Color.instance("#483D8B"), get_scene_width()*0.12, get_scene_height()*0.07);
        logcolor4.move(0.75*get_scene_width(),0.89*get_scene_height());
        text = add_sprite_for_text(" ", "myfont");   
        text.set_text("SCENE3");
        text.move(0.77*get_scene_width(),0.91*get_scene_height());
 }

    public void on_pointer_press(SEPointerInfo ptr)
 {
	   if(ptr.is_inside(0.75*get_scene_width(),0.68*get_scene_height(),0.80*get_scene_width(),0.73*get_scene_height()))
 	  { 
        base.on_pointer_press(ptr);
        switch_scene(new MainScene()); 
       }


       if(ptr.is_inside(0.75*get_scene_width(),0.75*get_scene_height(),0.80*get_scene_width(),0.80*get_scene_height()))
	   { 
        base.on_pointer_press(ptr);
        switch_scene(new S1()); 
       }  



       if(ptr.is_inside(0.75*get_scene_width(),0.82*get_scene_height(),0.80*get_scene_width(),0.87*get_scene_height()))
	   { 
        base.on_pointer_press(ptr);
        switch_scene(new S2()); 
       }  



       if(ptr.is_inside(0.75*get_scene_width(),0.89*get_scene_height(),0.80*get_scene_width(),0.94*get_scene_height()))
	   { 
        base.on_pointer_press(ptr);
        switch_scene(new S3()); 
       }
 }

    public void cleanup() {
        base.cleanup();
    }
}