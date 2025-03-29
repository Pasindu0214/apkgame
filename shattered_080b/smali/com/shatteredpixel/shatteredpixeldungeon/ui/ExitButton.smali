.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;
.super Lcom/watabou/noosa/ui/Button;
.source "ExitButton.java"


# instance fields
.field public image:Lcom/watabou/noosa/Image;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Button;-><init>()V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 2
    iput v0, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 3
    iput v0, p0, Lcom/watabou/noosa/ui/Component;->height:F

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->createChildren()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->EXIT:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;->image:Lcom/watabou/noosa/Image;

    .line 5
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0
.end method

.method public layout()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;->image:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v3, v0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v4, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget v3, v0, Lcom/watabou/noosa/Visual;->height:F

    invoke-static {v2, v3, v4, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    return-void
.end method

.method public onClick()V
    .locals 2

    .line 1
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v1, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 2
    instance-of v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, La/b/a/e;->a:La/b/a/a;

    invoke-interface {v0}, La/b/a/a;->exit()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    throw v0

    .line 4
    :cond_1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;->switchNoFade(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public onPointerDown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;->image:Lcom/watabou/noosa/Image;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->brightness(F)V

    .line 2
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_click.mp3"

    .line 3
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method

.method public onPointerUp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;->image:Lcom/watabou/noosa/Image;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->resetColor()V

    return-void
.end method
