.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;
.super Lcom/watabou/noosa/ui/Button;
.source "LanguageButton.java"


# instance fields
.field public flashing:Z

.field public image:Lcom/watabou/noosa/Image;

.field public time:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Button;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;->time:F

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->createChildren()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->LANGS:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;->image:Lcom/watabou/noosa/Image;

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;->updateIcon()V

    return-void
.end method

.method public layout()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;->image:Lcom/watabou/noosa/Image;

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
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndLangs;-><init>()V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public onPointerDown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;->image:Lcom/watabou/noosa/Image;

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
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;->image:Lcom/watabou/noosa/Image;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->resetColor()V

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;->updateIcon()V

    return-void
.end method

.method public update()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->update()V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;->flashing:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;->image:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;->time:F

    sget v2, Lcom/watabou/noosa/Game;->elapsed:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;->time:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->am:F

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;->time:F

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;->time:F

    :cond_0
    return-void
.end method

.method public final updateIcon()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;->image:Lcom/watabou/noosa/Image;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->resetColor()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;->flashing:Z

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->lang:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    .line 4
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->status:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages$Status;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;->image:Lcom/watabou/noosa/Image;

    invoke-virtual {v0, v1, v3, v4, v3}, Lcom/watabou/noosa/Visual;->tint(FFFF)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;->image:Lcom/watabou/noosa/Image;

    invoke-virtual {v0, v1, v4, v4, v3}, Lcom/watabou/noosa/Visual;->tint(FFFF)V

    .line 8
    iput-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/LanguageButton;->flashing:Z

    :goto_0
    return-void
.end method
